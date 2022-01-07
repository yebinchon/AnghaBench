
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt5640_priv {int pll_src; unsigned int pll_in; unsigned int pll_out; } ;
struct rl6231_pll_code {int m_bp; int m_code; int n_code; int k_code; } ;


 int EINVAL ;
 int RT5640_GLB_CLK ;
 int RT5640_PLL1_SRC_BCLK1 ;
 int RT5640_PLL1_SRC_BCLK2 ;
 int RT5640_PLL1_SRC_MASK ;
 int RT5640_PLL1_SRC_MCLK ;



 int RT5640_PLL_CTRL1 ;
 int RT5640_PLL_CTRL2 ;
 int RT5640_PLL_M_BP_SFT ;
 int RT5640_PLL_M_SFT ;
 int RT5640_PLL_N_SFT ;
 int RT5640_SCLK_SRC_MASK ;
 int RT5640_SCLK_SRC_MCLK ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned int) ;
 int rl6231_pll_calc (unsigned int,unsigned int,struct rl6231_pll_code*) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt5640_set_dai_pll(struct snd_soc_dai *dai, int pll_id, int source,
   unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = dai->component;
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);
 struct rl6231_pll_code pll_code;
 int ret;

 if (source == rt5640->pll_src && freq_in == rt5640->pll_in &&
     freq_out == rt5640->pll_out)
  return 0;

 if (!freq_in || !freq_out) {
  dev_dbg(component->dev, "PLL disabled\n");

  rt5640->pll_in = 0;
  rt5640->pll_out = 0;
  snd_soc_component_update_bits(component, RT5640_GLB_CLK,
   RT5640_SCLK_SRC_MASK, RT5640_SCLK_SRC_MCLK);
  return 0;
 }

 switch (source) {
 case 128:
  snd_soc_component_update_bits(component, RT5640_GLB_CLK,
   RT5640_PLL1_SRC_MASK, RT5640_PLL1_SRC_MCLK);
  break;
 case 130:
  snd_soc_component_update_bits(component, RT5640_GLB_CLK,
   RT5640_PLL1_SRC_MASK, RT5640_PLL1_SRC_BCLK1);
  break;
 case 129:
  snd_soc_component_update_bits(component, RT5640_GLB_CLK,
   RT5640_PLL1_SRC_MASK, RT5640_PLL1_SRC_BCLK2);
  break;
 default:
  dev_err(component->dev, "Unknown PLL source %d\n", source);
  return -EINVAL;
 }

 ret = rl6231_pll_calc(freq_in, freq_out, &pll_code);
 if (ret < 0) {
  dev_err(component->dev, "Unsupport input clock %d\n", freq_in);
  return ret;
 }

 dev_dbg(component->dev, "bypass=%d m=%d n=%d k=%d\n",
  pll_code.m_bp, (pll_code.m_bp ? 0 : pll_code.m_code),
  pll_code.n_code, pll_code.k_code);

 snd_soc_component_write(component, RT5640_PLL_CTRL1,
  pll_code.n_code << RT5640_PLL_N_SFT | pll_code.k_code);
 snd_soc_component_write(component, RT5640_PLL_CTRL2,
  (pll_code.m_bp ? 0 : pll_code.m_code) << RT5640_PLL_M_SFT |
  pll_code.m_bp << RT5640_PLL_M_BP_SFT);

 rt5640->pll_in = freq_in;
 rt5640->pll_out = freq_out;
 rt5640->pll_src = source;

 return 0;
}

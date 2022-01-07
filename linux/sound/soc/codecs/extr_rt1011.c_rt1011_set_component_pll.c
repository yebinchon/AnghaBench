
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt1011_priv {int pll_src; unsigned int pll_in; unsigned int pll_out; } ;
struct rl6231_pll_code {int m_bp; int m_code; int n_code; int k_code; } ;


 int EINVAL ;
 int RT1011_CLK_2 ;
 int RT1011_CLK_DET ;
 int RT1011_EN_MCLK_DET ;
 int RT1011_EN_MCLK_DET_MASK ;
 int RT1011_FS_SYS_PRE_BCLK ;
 int RT1011_FS_SYS_PRE_MASK ;
 int RT1011_PLL1_BPM_SFT ;
 int RT1011_PLL1_QM_SFT ;
 int RT1011_PLL1_SRC_BCLK ;
 int RT1011_PLL1_SRC_MASK ;
 int RT1011_PLL1_SRC_PLL2 ;

 int RT1011_PLL2_SRC_MASK ;
 int RT1011_PLL2_SRC_MCLK ;
 int RT1011_PLL2_SRC_RCCLK ;


 int RT1011_PLL_1 ;
 int RT1011_PLL_2 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned int) ;
 int rl6231_pll_calc (unsigned int,unsigned int,struct rl6231_pll_code*) ;
 struct rt1011_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt1011_set_component_pll(struct snd_soc_component *component,
  int pll_id, int source, unsigned int freq_in,
  unsigned int freq_out)
{
 struct rt1011_priv *rt1011 = snd_soc_component_get_drvdata(component);
 struct rl6231_pll_code pll_code;
 int ret;

 if (source == rt1011->pll_src && freq_in == rt1011->pll_in &&
     freq_out == rt1011->pll_out)
  return 0;

 if (!freq_in || !freq_out) {
  dev_dbg(component->dev, "PLL disabled\n");

  rt1011->pll_in = 0;
  rt1011->pll_out = 0;
  snd_soc_component_update_bits(component, RT1011_CLK_2,
   RT1011_FS_SYS_PRE_MASK, RT1011_FS_SYS_PRE_BCLK);
  return 0;
 }

 switch (source) {
 case 129:
  snd_soc_component_update_bits(component, RT1011_CLK_2,
   RT1011_PLL2_SRC_MASK, RT1011_PLL2_SRC_MCLK);
  snd_soc_component_update_bits(component, RT1011_CLK_2,
   RT1011_PLL1_SRC_MASK, RT1011_PLL1_SRC_PLL2);
  snd_soc_component_update_bits(component, RT1011_CLK_DET,
   RT1011_EN_MCLK_DET_MASK, RT1011_EN_MCLK_DET);
  break;
 case 130:
  snd_soc_component_update_bits(component, RT1011_CLK_2,
    RT1011_PLL1_SRC_MASK, RT1011_PLL1_SRC_BCLK);
  break;
 case 128:
  snd_soc_component_update_bits(component, RT1011_CLK_2,
   RT1011_PLL2_SRC_MASK, RT1011_PLL2_SRC_RCCLK);
  snd_soc_component_update_bits(component, RT1011_CLK_2,
   RT1011_PLL1_SRC_MASK, RT1011_PLL1_SRC_PLL2);
  break;
 default:
  dev_err(component->dev, "Unknown PLL Source %d\n", source);
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

 snd_soc_component_write(component, RT1011_PLL_1,
  (pll_code.m_bp ? 0 : pll_code.m_code) << RT1011_PLL1_QM_SFT |
  pll_code.m_bp << RT1011_PLL1_BPM_SFT | pll_code.n_code);
 snd_soc_component_write(component, RT1011_PLL_2,
  pll_code.k_code);

 rt1011->pll_in = freq_in;
 rt1011->pll_out = freq_out;
 rt1011->pll_src = source;

 return 0;
}

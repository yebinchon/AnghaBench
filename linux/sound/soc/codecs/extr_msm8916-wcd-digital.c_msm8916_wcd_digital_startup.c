
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct msm8916_wcd_digital_priv {int mclk; } ;


 int LPASS_CDC_CLK_MCLK_CTL ;
 int LPASS_CDC_CLK_PDM_CTL ;
 int LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB ;
 int LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK ;
 int LPASS_CDC_TOP_CTL ;
 int MCLK_CTL_MCLK_EN_ENABLE ;
 int MCLK_CTL_MCLK_EN_MASK ;
 int TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ ;
 int TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ ;
 int TOP_CTL_DIG_MCLK_FREQ_MASK ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,unsigned long) ;
 struct msm8916_wcd_digital_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int msm8916_wcd_digital_startup(struct snd_pcm_substream *substream,
           struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct msm8916_wcd_digital_priv *msm8916_wcd;
 unsigned long mclk_rate;

 msm8916_wcd = snd_soc_component_get_drvdata(component);
 snd_soc_component_update_bits(component, LPASS_CDC_CLK_MCLK_CTL,
       MCLK_CTL_MCLK_EN_MASK,
       MCLK_CTL_MCLK_EN_ENABLE);
 snd_soc_component_update_bits(component, LPASS_CDC_CLK_PDM_CTL,
       LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK,
       LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB);

 mclk_rate = clk_get_rate(msm8916_wcd->mclk);
 switch (mclk_rate) {
 case 12288000:
  snd_soc_component_update_bits(component, LPASS_CDC_TOP_CTL,
        TOP_CTL_DIG_MCLK_FREQ_MASK,
        TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ);
  break;
 case 9600000:
  snd_soc_component_update_bits(component, LPASS_CDC_TOP_CTL,
        TOP_CTL_DIG_MCLK_FREQ_MASK,
        TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ);
  break;
 default:
  dev_err(component->dev, "Invalid mclk rate %ld\n", mclk_rate);
  break;
 }
 return 0;
}

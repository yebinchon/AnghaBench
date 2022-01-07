
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;


 int LPASS_CDC_CLK_PDM_CTL ;
 int LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK ;
 int snd_soc_component_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void msm8916_wcd_digital_shutdown(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 snd_soc_component_update_bits(dai->component, LPASS_CDC_CLK_PDM_CTL,
       LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3 ;
 int DMIC_B1_CTL_DMIC0_CLK_SEL_MASK ;
 int EINVAL ;
 int LPASS_CDC_CLK_DMIC_B1_CTL ;
 int LPASS_CDC_TX1_DMIC_CTL ;
 int LPASS_CDC_TX2_DMIC_CTL ;

 int TXN_DMIC_CTL_CLK_SEL_DIV3 ;
 int TXN_DMIC_CTL_CLK_SEL_MASK ;
 int dev_err (int ,char*) ;
 int kstrtouint (char*,int,unsigned int*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 char* strpbrk (int ,char*) ;

__attribute__((used)) static int msm8916_wcd_digital_enable_dmic(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol,
        int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int dmic;
 int ret;

 char *dmic_num = strpbrk(w->name, "12");

 if (dmic_num == ((void*)0)) {
  dev_err(component->dev, "Invalid DMIC\n");
  return -EINVAL;
 }
 ret = kstrtouint(dmic_num, 10, &dmic);
 if (ret < 0 || dmic > 2) {
  dev_err(component->dev, "Invalid DMIC line on the component\n");
  return -EINVAL;
 }

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, LPASS_CDC_CLK_DMIC_B1_CTL,
        DMIC_B1_CTL_DMIC0_CLK_SEL_MASK,
        DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3);
  switch (dmic) {
  case 1:
   snd_soc_component_update_bits(component, LPASS_CDC_TX1_DMIC_CTL,
         TXN_DMIC_CTL_CLK_SEL_MASK,
         TXN_DMIC_CTL_CLK_SEL_DIV3);
   break;
  case 2:
   snd_soc_component_update_bits(component, LPASS_CDC_TX2_DMIC_CTL,
         TXN_DMIC_CTL_CLK_SEL_MASK,
         TXN_DMIC_CTL_CLK_SEL_DIV3);
   break;
  }
  break;
 }

 return 0;
}

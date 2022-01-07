
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct da7213_priv {int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int DA7213_BIAS_EN ;
 int DA7213_REFERENCES ;
 int DA7213_VMID_EN ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct da7213_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int da7213_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct da7213_priv *da7213 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:

  if (snd_soc_component_get_bias_level(component) == 128) {
   if (da7213->mclk) {
    ret = clk_prepare_enable(da7213->mclk);
    if (ret) {
     dev_err(component->dev,
      "Failed to enable mclk\n");
     return ret;
    }
   }
  }
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_update_bits(component, DA7213_REFERENCES,
         DA7213_VMID_EN | DA7213_BIAS_EN,
         DA7213_VMID_EN | DA7213_BIAS_EN);
  } else {

   if (da7213->mclk)
    clk_disable_unprepare(da7213->mclk);
  }
  break;
 case 131:

  snd_soc_component_update_bits(component, DA7213_REFERENCES,
        DA7213_VMID_EN | DA7213_BIAS_EN, 0);
  break;
 }
 return 0;
}

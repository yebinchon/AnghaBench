
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8825 {int mclk; int mclk_freq; int regmap; int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int NAU8825_ENABLE_ADC ;
 int NAU8825_MICBIAS_JKR2 ;
 int NAU8825_MICBIAS_JKSLV ;
 int NAU8825_REG_ENA_CTRL ;
 int NAU8825_REG_HSD_CTRL ;
 int NAU8825_REG_INTERRUPT_DIS_CTRL ;
 int NAU8825_REG_MIC_BIAS ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int nau8825_resume_setup (struct nau8825*) ;
 int nau8825_xtalk_cancel (struct nau8825*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct nau8825* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8825_set_bias_level(struct snd_soc_component *component,
       enum snd_soc_bias_level level)
{
 struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   if (nau8825->mclk_freq) {
    ret = clk_prepare_enable(nau8825->mclk);
    if (ret) {
     dev_err(nau8825->dev, "Unable to prepare component mclk\n");
     return ret;
    }
   }

   nau8825_resume_setup(nau8825);
  }
  break;

 case 131:


  regmap_update_bits(nau8825->regmap, NAU8825_REG_MIC_BIAS,
   NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2, 0);

  regmap_update_bits(nau8825->regmap,
   NAU8825_REG_HSD_CTRL, 0xf, 0xf);

  nau8825_xtalk_cancel(nau8825);



  regmap_write(nau8825->regmap,
   NAU8825_REG_INTERRUPT_DIS_CTRL, 0xffff);

  regmap_update_bits(nau8825->regmap, NAU8825_REG_ENA_CTRL,
   NAU8825_ENABLE_ADC, 0);
  if (nau8825->mclk_freq)
   clk_disable_unprepare(nau8825->mclk);
  break;
 }
 return 0;
}

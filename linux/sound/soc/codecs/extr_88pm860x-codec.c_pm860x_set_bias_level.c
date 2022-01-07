
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pm860x_priv {int i2c; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AUDIO_PLL ;
 int AUDIO_SECTION_ON ;
 int AUDIO_SECTION_RESET ;
 int REG_MISC2 ;




 int pm860x_reg_write (int ,int ,int) ;
 int pm860x_set_bits (int ,int ,int,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int udelay (int) ;

__attribute__((used)) static int pm860x_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);
 int data;

 switch (level) {
 case 130:
  break;

 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   data = AUDIO_PLL | AUDIO_SECTION_ON;
   pm860x_reg_write(pm860x->i2c, REG_MISC2, data);
   udelay(300);
   data = AUDIO_PLL | AUDIO_SECTION_RESET
    | AUDIO_SECTION_ON;
   pm860x_reg_write(pm860x->i2c, REG_MISC2, data);
  }
  break;

 case 131:
  data = AUDIO_PLL | AUDIO_SECTION_RESET | AUDIO_SECTION_ON;
  pm860x_set_bits(pm860x->i2c, REG_MISC2, data, 0);
  break;
 }
 return 0;
}

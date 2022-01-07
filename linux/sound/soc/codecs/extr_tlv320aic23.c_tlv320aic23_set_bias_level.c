
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int TLV320AIC23_ACTIVE ;
 int TLV320AIC23_CLK_OFF ;
 int TLV320AIC23_DAC_OFF ;
 int TLV320AIC23_DEVICE_PWR_OFF ;
 int TLV320AIC23_OSC_OFF ;
 int TLV320AIC23_PWR ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int tlv320aic23_set_bias_level(struct snd_soc_component *component,
          enum snd_soc_bias_level level)
{
 u16 reg = snd_soc_component_read32(component, TLV320AIC23_PWR) & 0x17f;

 switch (level) {
 case 130:

  reg &= ~(TLV320AIC23_DEVICE_PWR_OFF | TLV320AIC23_OSC_OFF | TLV320AIC23_DAC_OFF);

  snd_soc_component_write(component, TLV320AIC23_PWR, reg);
  break;
 case 129:
  break;
 case 128:

  snd_soc_component_write(component, TLV320AIC23_PWR,
         reg | TLV320AIC23_CLK_OFF);
  break;
 case 131:

  snd_soc_component_write(component, TLV320AIC23_ACTIVE, 0x0);
  snd_soc_component_write(component, TLV320AIC23_PWR, 0x1ff);
  break;
 }
 return 0;
}

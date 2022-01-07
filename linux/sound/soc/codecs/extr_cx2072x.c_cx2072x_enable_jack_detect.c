
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct cx2072x_priv {int regmap; } ;


 int CX2072X_ANALOG_TEST12 ;
 int CX2072X_DIGITAL_TEST1 ;
 int CX2072X_DIGITAL_TEST15 ;
 int CX2072X_GPIO_STICKY_MASK ;
 int CX2072X_PORTA_UNSOLICITED_RESPONSE ;
 int CX2072X_UM_INTERRUPT_CRTL_E ;
 int regmap_write (int ,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void cx2072x_enable_jack_detect(struct snd_soc_component *codec)
{
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(codec);


 regmap_write(cx2072x->regmap, CX2072X_GPIO_STICKY_MASK, 0x1f);


 regmap_write(cx2072x->regmap, CX2072X_UM_INTERRUPT_CRTL_E, 0x12 << 24);


 regmap_write(cx2072x->regmap, CX2072X_PORTA_UNSOLICITED_RESPONSE, 0x80);


 regmap_write(cx2072x->regmap, CX2072X_DIGITAL_TEST15, 0x73);


 regmap_write(cx2072x->regmap, CX2072X_ANALOG_TEST12, 0x300);


 regmap_write(cx2072x->regmap, CX2072X_DIGITAL_TEST1, 0);

 snd_soc_dapm_mutex_lock(dapm);

 snd_soc_dapm_force_enable_pin_unlocked(dapm, "PORTD");
 snd_soc_dapm_force_enable_pin_unlocked(dapm, "Headset Bias");
 snd_soc_dapm_force_enable_pin_unlocked(dapm, "PortD Mic Bias");

 snd_soc_dapm_mutex_unlock(dapm);
}

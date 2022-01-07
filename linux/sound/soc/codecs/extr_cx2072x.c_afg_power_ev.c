
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct cx2072x_priv {int regmap; } ;


 int CX2072X_DIGITAL_BIOS_TEST0 ;


 int regmap_update_bits (int ,int ,int,int) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int afg_power_ev(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *codec = snd_soc_dapm_to_component(w->dapm);
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);

 switch (event) {
 case 129:
  regmap_update_bits(cx2072x->regmap, CX2072X_DIGITAL_BIOS_TEST0,
       0x00, 0x10);
  break;

 case 128:
  regmap_update_bits(cx2072x->regmap, CX2072X_DIGITAL_BIOS_TEST0,
       0x10, 0x10);
  break;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5110_priv {int in_value; int* in_pga_cache; int in_post_pending; int in_pre_pending; } ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct reg_sequence {int member_0; int member_1; int def; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 int ARIZONA_IN1L_CONTROL ;
 unsigned int ARIZONA_IN1L_PGA_VOL_MASK ;
 int ARIZONA_IN1L_PGA_VOL_SHIFT ;
 int ARRAY_SIZE (struct reg_sequence*) ;



 int msleep (int) ;
 int regmap_multi_reg_write_bypassed (int ,struct reg_sequence*,int ) ;
 void* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,unsigned int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm5110_in_analog_ev(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct wm5110_priv *wm5110 = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 unsigned int reg, mask;
 struct reg_sequence analog_seq[] = {
  { 0x80, 0x3 },
  { 0x35d, 0 },
  { 0x80, 0x0 },
 };

 reg = ARIZONA_IN1L_CONTROL + ((w->shift ^ 0x1) * 4);
 mask = ARIZONA_IN1L_PGA_VOL_MASK;

 switch (event) {
 case 128:
  wm5110->in_value |= 0x3 << ((w->shift ^ 0x1) * 2);
  wm5110->in_pre_pending++;
  wm5110->in_post_pending++;
  return 0;
 case 129:
  wm5110->in_pga_cache[w->shift] = snd_soc_component_read32(component, reg);

  snd_soc_component_update_bits(component, reg, mask,
        0x40 << ARIZONA_IN1L_PGA_VOL_SHIFT);

  wm5110->in_pre_pending--;
  if (wm5110->in_pre_pending == 0) {
   analog_seq[1].def = wm5110->in_value;
   regmap_multi_reg_write_bypassed(arizona->regmap,
       analog_seq,
       ARRAY_SIZE(analog_seq));

   msleep(55);

   wm5110->in_value = 0;
  }

  break;
 case 130:
  snd_soc_component_update_bits(component, reg, mask,
           wm5110->in_pga_cache[w->shift]);

  wm5110->in_post_pending--;
  if (wm5110->in_post_pending == 0)
   regmap_multi_reg_write_bypassed(arizona->regmap,
       analog_seq,
       ARRAY_SIZE(analog_seq));
  break;
 default:
  break;
 }

 return 0;
}

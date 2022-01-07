
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct axg_spdifin {int map; } ;


 int FIELD_PREP (int ,int) ;
 int SPDIFIN_CTRL0 ;
 int SPDIFIN_CTRL0_STATUS_SEL ;
 int SPDIFIN_STAT1 ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct axg_spdifin* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int axg_spdifin_get_status(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *c = snd_kcontrol_chip(kcontrol);
 struct axg_spdifin *priv = snd_soc_component_get_drvdata(c);
 int i, j;

 for (i = 0; i < 6; i++) {
  unsigned int val;

  regmap_update_bits(priv->map, SPDIFIN_CTRL0,
       SPDIFIN_CTRL0_STATUS_SEL,
       FIELD_PREP(SPDIFIN_CTRL0_STATUS_SEL, i));

  regmap_read(priv->map, SPDIFIN_STAT1, &val);

  for (j = 0; j < 4; j++) {
   unsigned int offset = i * 4 + j;

   ucontrol->value.iec958.status[offset] =
    (val >> (j * 8)) & 0xff;
  }
 }

 return 0;
}

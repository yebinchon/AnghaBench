
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nau8825 {int xtalk_baktab_initialized; int regmap; } ;
struct TYPE_3__ {scalar_t__ reg; int def; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int NAU8825_HPR_VOL_MASK ;
 scalar_t__ NAU8825_REG_HSVOL_CTRL ;
 int nau8825_hpvol_ramp (struct nau8825*,int ,int,int) ;
 TYPE_1__* nau8825_xtalk_baktab ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static void nau8825_xtalk_restore(struct nau8825 *nau8825, bool cause_cancel)
{
 int i, volume;

 if (!nau8825->xtalk_baktab_initialized)
  return;






 for (i = 0; i < ARRAY_SIZE(nau8825_xtalk_baktab); i++) {
  if (!cause_cancel && nau8825_xtalk_baktab[i].reg ==
   NAU8825_REG_HSVOL_CTRL) {

   volume = nau8825_xtalk_baktab[i].def &
    NAU8825_HPR_VOL_MASK;
   nau8825_hpvol_ramp(nau8825, 0, volume, 3);
   continue;
  }
  regmap_write(nau8825->regmap, nau8825_xtalk_baktab[i].reg,
    nau8825_xtalk_baktab[i].def);
 }

 nau8825->xtalk_baktab_initialized = 0;
}

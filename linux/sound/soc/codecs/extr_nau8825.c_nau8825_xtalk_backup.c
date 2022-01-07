
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nau8825 {int xtalk_baktab_initialized; int regmap; } ;
struct TYPE_3__ {int def; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nau8825_xtalk_baktab ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static void nau8825_xtalk_backup(struct nau8825 *nau8825)
{
 int i;

 if (nau8825->xtalk_baktab_initialized)
  return;


 for (i = 0; i < ARRAY_SIZE(nau8825_xtalk_baktab); i++)
  regmap_read(nau8825->regmap, nau8825_xtalk_baktab[i].reg,
    &nau8825_xtalk_baktab[i].def);

 nau8825->xtalk_baktab_initialized = 1;
}

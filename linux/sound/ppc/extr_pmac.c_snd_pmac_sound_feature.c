
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {int node; } ;
struct TYPE_2__ {int (* feature_call ) (int ,int ,int ,int) ;} ;


 int PMAC_FTR_SOUND_CHIP_ENABLE ;
 TYPE_1__ ppc_md ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static void snd_pmac_sound_feature(struct snd_pmac *chip, int enable)
{
 if (ppc_md.feature_call)
  ppc_md.feature_call(PMAC_FTR_SOUND_CHIP_ENABLE, chip->node, 0, enable);
}

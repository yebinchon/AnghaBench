
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int ARRAY_SIZE (int *) ;
 int * snd_ac97_controls_ucb1400 ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ac97*) ;

__attribute__((used)) static int patch_ucb1400_specific(struct snd_ac97 * ac97)
{
 int idx, err;
 for (idx = 0; idx < ARRAY_SIZE(snd_ac97_controls_ucb1400); idx++)
  if ((err = snd_ctl_add(ac97->bus->card, snd_ctl_new1(&snd_ac97_controls_ucb1400[idx], ac97))) < 0)
   return err;
 return 0;
}

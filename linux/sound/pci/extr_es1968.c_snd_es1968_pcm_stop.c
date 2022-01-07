
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esschan {scalar_t__ mode; int * apu; } ;
struct es1968 {int reg_lock; } ;


 scalar_t__ ESM_MODE_CAPTURE ;
 int snd_es1968_trigger_apu (struct es1968*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_es1968_pcm_stop(struct es1968 *chip, struct esschan *es)
{
 spin_lock(&chip->reg_lock);
 snd_es1968_trigger_apu(chip, es->apu[0], 0);
 snd_es1968_trigger_apu(chip, es->apu[1], 0);
 if (es->mode == ESM_MODE_CAPTURE) {
  snd_es1968_trigger_apu(chip, es->apu[2], 0);
  snd_es1968_trigger_apu(chip, es->apu[3], 0);
 }
 spin_unlock(&chip->reg_lock);
}

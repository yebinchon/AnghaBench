
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int * oss_synth; int card; } ;


 int snd_device_free (int ,int *) ;

void
snd_emux_detach_seq_oss(struct snd_emux *emu)
{
 if (emu->oss_synth) {
  snd_device_free(emu->card, emu->oss_synth);
  emu->oss_synth = ((void*)0);
 }
}

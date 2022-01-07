
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int * hwdep; int card; } ;


 int snd_device_free (int ,int *) ;

void
snd_emux_delete_hwdep(struct snd_emux *emu)
{
 if (emu->hwdep) {
  snd_device_free(emu->card, emu->hwdep);
  emu->hwdep = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int recsrc; } ;


 int snd_msndmix_set_mux (struct snd_msnd*,int) ;

int snd_msndmix_force_recsrc(struct snd_msnd *dev, int recsrc)
{
 dev->recsrc = -1;
 return snd_msndmix_set_mux(dev, recsrc);
}

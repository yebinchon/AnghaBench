
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lo_as_master; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;


 int AC97_AD_MISC ;
 scalar_t__ is_shared_linein (struct snd_ac97*) ;
 scalar_t__ is_shared_micin (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,unsigned short) ;

__attribute__((used)) static void ad1888_update_jacks(struct snd_ac97 *ac97)
{
 unsigned short val = 0;

 if (!ac97->spec.ad18xx.lo_as_master && is_shared_linein(ac97))
  val |= (1 << 12);

 if (is_shared_micin(ac97))
  val |= (1 << 11);

 snd_ac97_update_bits(ac97, AC97_AD_MISC, (1 << 11) | (1 << 12), val);
}

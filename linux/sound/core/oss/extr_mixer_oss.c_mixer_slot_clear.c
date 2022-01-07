
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {int number; int (* private_free ) (struct snd_mixer_oss_slot*) ;} ;


 int memset (struct snd_mixer_oss_slot*,int ,int) ;
 int stub1 (struct snd_mixer_oss_slot*) ;

__attribute__((used)) static void mixer_slot_clear(struct snd_mixer_oss_slot *rslot)
{
 int idx = rslot->number;
 if (rslot->private_free)
  rslot->private_free(rslot);
 memset(rslot, 0, sizeof(*rslot));
 rslot->number = idx;
}

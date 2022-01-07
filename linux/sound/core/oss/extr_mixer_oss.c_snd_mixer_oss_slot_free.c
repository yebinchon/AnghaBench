
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {struct slot* private_data; } ;
struct slot {struct slot* assigned; struct slot* name; scalar_t__ allocated; } ;


 int kfree (struct slot*) ;

__attribute__((used)) static void snd_mixer_oss_slot_free(struct snd_mixer_oss_slot *chn)
{
 struct slot *p = chn->private_data;
 if (p) {
  if (p->allocated && p->assigned) {
   kfree(p->assigned->name);
   kfree(p->assigned);
  }
  kfree(p);
 }
}

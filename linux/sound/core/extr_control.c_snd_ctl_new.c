
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {unsigned int count; TYPE_1__* vd; } ;
struct snd_ctl_file {int dummy; } ;
struct TYPE_2__ {unsigned int access; struct snd_ctl_file* owner; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MAX_CONTROL_COUNT ;
 struct snd_kcontrol* kzalloc (int ,int ) ;
 int struct_size (struct snd_kcontrol*,int ,unsigned int) ;
 int vd ;

__attribute__((used)) static int snd_ctl_new(struct snd_kcontrol **kctl, unsigned int count,
         unsigned int access, struct snd_ctl_file *file)
{
 unsigned int idx;

 if (count == 0 || count > MAX_CONTROL_COUNT)
  return -EINVAL;

 *kctl = kzalloc(struct_size(*kctl, vd, count), GFP_KERNEL);
 if (!*kctl)
  return -ENOMEM;

 for (idx = 0; idx < count; idx++) {
  (*kctl)->vd[idx].access = access;
  (*kctl)->vd[idx].owner = file;
 }
 (*kctl)->count = count;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;} ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_ctl_elem_info {int type; int count; struct snd_ctl_elem_id id; } ;
struct snd_card {int controls_rwsem; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int down_read (int *) ;
 int kfree (struct snd_ctl_elem_info*) ;
 struct snd_ctl_elem_info* kzalloc (int,int ) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;
 int up_read (int *) ;

__attribute__((used)) static int get_ctl_type(struct snd_card *card, struct snd_ctl_elem_id *id,
   int *countp)
{
 struct snd_kcontrol *kctl;
 struct snd_ctl_elem_info *info;
 int err;

 down_read(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, id);
 if (! kctl) {
  up_read(&card->controls_rwsem);
  return -ENOENT;
 }
 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) {
  up_read(&card->controls_rwsem);
  return -ENOMEM;
 }
 info->id = *id;
 err = kctl->info(kctl, info);
 up_read(&card->controls_rwsem);
 if (err >= 0) {
  err = info->type;
  *countp = info->count;
 }
 kfree(info);
 return err;
}

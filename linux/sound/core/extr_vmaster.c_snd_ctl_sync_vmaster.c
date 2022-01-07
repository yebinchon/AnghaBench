
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct link_master {int val; int hook_private_data; int (* hook ) (int ,int ) ;} ;


 int master_init (struct link_master*) ;
 struct link_master* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (int ,int ) ;
 int sync_slaves (struct link_master*,int ,int ) ;

void snd_ctl_sync_vmaster(struct snd_kcontrol *kcontrol, bool hook_only)
{
 struct link_master *master;
 bool first_init = 0;

 if (!kcontrol)
  return;
 master = snd_kcontrol_chip(kcontrol);
 if (!hook_only) {
  int err = master_init(master);
  if (err < 0)
   return;
  first_init = err;
  err = sync_slaves(master, master->val, master->val);
  if (err < 0)
   return;
 }

 if (master->hook && !first_init)
  master->hook(master->hook_private_data, master->val);
}

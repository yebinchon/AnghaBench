
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct link_master {int val; int hook_private_data; int (* hook ) (int ,int) ;} ;


 int master_init (struct link_master*) ;
 struct link_master* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (int ,int) ;
 int sync_slaves (struct link_master*,int,int) ;

__attribute__((used)) static int master_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct link_master *master = snd_kcontrol_chip(kcontrol);
 int err, new_val, old_val;
 bool first_init;

 err = master_init(master);
 if (err < 0)
  return err;
 first_init = err;
 old_val = master->val;
 new_val = ucontrol->value.integer.value[0];
 if (new_val == old_val)
  return 0;

 err = sync_slaves(master, old_val, new_val);
 if (err < 0)
  return err;
 if (master->hook && !first_init)
  master->hook(master->hook_private_data, master->val);
 return 1;
}

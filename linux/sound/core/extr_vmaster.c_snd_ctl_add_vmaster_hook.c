
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct link_master {void (* hook ) (void*,int) ;void* hook_private_data; } ;


 struct link_master* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_ctl_add_vmaster_hook(struct snd_kcontrol *kcontrol,
        void (*hook)(void *private_data, int),
        void *private_data)
{
 struct link_master *master = snd_kcontrol_chip(kcontrol);
 master->hook = hook;
 master->hook_private_data = private_data;
 return 0;
}

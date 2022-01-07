
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_vmaster_mute_hook {int sw_kctl; TYPE_2__* codec; int hook; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ shutdown; } ;


 int snd_ctl_sync_vmaster_hook (int ) ;

void snd_hda_sync_vmaster_hook(struct hda_vmaster_mute_hook *hook)
{
 if (!hook->hook || !hook->codec)
  return;



 if (hook->codec->bus->shutdown)
  return;
 snd_ctl_sync_vmaster_hook(hook->sw_kctl);
}

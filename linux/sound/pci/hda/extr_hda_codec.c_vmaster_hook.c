
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_vmaster_mute_hook {int mute_mode; int codec; int (* hook ) (int ,int) ;} ;


 int HDA_VMUTE_FOLLOW_MASTER ;
 int stub1 (int ,int) ;

__attribute__((used)) static void vmaster_hook(void *private_data, int enabled)
{
 struct hda_vmaster_mute_hook *hook = private_data;

 if (hook->mute_mode != HDA_VMUTE_FOLLOW_MASTER)
  enabled = hook->mute_mode;
 hook->hook(hook->codec, enabled);
}

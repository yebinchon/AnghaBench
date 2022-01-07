
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int channelName ;
 int kAudioChannels ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;

__attribute__((used)) static int snd_korg1212_control_route_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 return snd_ctl_enum_info(uinfo,
     (kcontrol->private_value >= 8) ? 2 : 1,
     kAudioChannels, channelName);
}

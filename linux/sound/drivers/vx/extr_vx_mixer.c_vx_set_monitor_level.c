
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int* audio_monitor; int* audio_monitor_active; } ;
struct vx_audio_level {int has_monitor_level; int monitor_level; int has_monitor_mute; int monitor_mute; } ;
typedef int info ;


 int memset (struct vx_audio_level*,int ,int) ;
 int vx_adjust_audio_level (struct vx_core*,int,int ,struct vx_audio_level*) ;

int vx_set_monitor_level(struct vx_core *chip, int audio, int level, int active)
{
 struct vx_audio_level info;

 memset(&info, 0, sizeof(info));
 info.has_monitor_level = 1;
 info.monitor_level = level;
 info.has_monitor_mute = 1;
 info.monitor_mute = !active;
 chip->audio_monitor[audio] = level;
 chip->audio_monitor_active[audio] = active;
 return vx_adjust_audio_level(chip, audio, 0, &info);
}

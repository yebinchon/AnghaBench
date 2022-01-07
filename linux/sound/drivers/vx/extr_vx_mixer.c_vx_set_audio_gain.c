
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int** audio_gain; } ;
struct vx_audio_level {int has_level; int level; } ;
typedef int info ;


 int memset (struct vx_audio_level*,int ,int) ;
 int vx_adjust_audio_level (struct vx_core*,int,int,struct vx_audio_level*) ;

__attribute__((used)) static int vx_set_audio_gain(struct vx_core *chip, int audio, int capture, int level)
{
 struct vx_audio_level info;

 memset(&info, 0, sizeof(info));
 info.has_level = 1;
 info.level = level;
 chip->audio_gain[capture][audio] = level;
 return vx_adjust_audio_level(chip, audio, capture, &info);
}

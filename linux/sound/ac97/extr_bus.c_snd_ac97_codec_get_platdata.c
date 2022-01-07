
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {void** codecs_pdata; } ;
struct ac97_codec_device {size_t num; struct ac97_controller* ac97_ctrl; } ;



void *snd_ac97_codec_get_platdata(const struct ac97_codec_device *adev)
{
 struct ac97_controller *ac97_ctrl = adev->ac97_ctrl;

 return ac97_ctrl->codecs_pdata[adev->num];
}

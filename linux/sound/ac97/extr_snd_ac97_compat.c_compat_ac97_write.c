
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int num; int private_data; } ;
struct ac97_controller {TYPE_1__* ops; } ;
struct ac97_codec_device {struct ac97_controller* ac97_ctrl; } ;
struct TYPE_2__ {int (* write ) (struct ac97_controller*,int ,unsigned short,unsigned short) ;} ;


 int stub1 (struct ac97_controller*,int ,unsigned short,unsigned short) ;
 struct ac97_codec_device* to_ac97_device (int ) ;

__attribute__((used)) static void compat_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
         unsigned short val)
{
 struct ac97_codec_device *adev = to_ac97_device(ac97->private_data);
 struct ac97_controller *actrl = adev->ac97_ctrl;

 actrl->ops->write(actrl, ac97->num, reg, val);
}

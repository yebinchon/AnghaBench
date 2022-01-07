
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int num; int private_data; } ;
struct ac97_controller {TYPE_1__* ops; } ;
struct ac97_codec_device {struct ac97_controller* ac97_ctrl; } ;
struct TYPE_2__ {unsigned short (* read ) (struct ac97_controller*,int ,unsigned short) ;} ;


 unsigned short stub1 (struct ac97_controller*,int ,unsigned short) ;
 struct ac97_codec_device* to_ac97_device (int ) ;

__attribute__((used)) static unsigned short compat_ac97_read(struct snd_ac97 *ac97,
           unsigned short reg)
{
 struct ac97_codec_device *adev = to_ac97_device(ac97->private_data);
 struct ac97_controller *actrl = adev->ac97_ctrl;

 return actrl->ops->read(actrl, ac97->num, reg);
}

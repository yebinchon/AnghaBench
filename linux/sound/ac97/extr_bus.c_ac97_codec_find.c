
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {struct ac97_codec_device** codecs; } ;
struct ac97_codec_device {int dummy; } ;


 unsigned int AC97_BUS_MAX_CODECS ;
 int EINVAL ;
 struct ac97_codec_device* ERR_PTR (int ) ;

__attribute__((used)) static struct ac97_codec_device *
ac97_codec_find(struct ac97_controller *ac97_ctrl, unsigned int codec_num)
{
 if (codec_num >= AC97_BUS_MAX_CODECS)
  return ERR_PTR(-EINVAL);

 return ac97_ctrl->codecs[codec_num];
}

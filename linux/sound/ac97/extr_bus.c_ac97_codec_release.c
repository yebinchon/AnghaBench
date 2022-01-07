
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct ac97_controller {int ** codecs; } ;
struct ac97_codec_device {size_t num; struct ac97_controller* ac97_ctrl; } ;


 int kfree (struct ac97_codec_device*) ;
 int of_node_put (int ) ;
 struct ac97_codec_device* to_ac97_device (struct device*) ;

__attribute__((used)) static void ac97_codec_release(struct device *dev)
{
 struct ac97_codec_device *adev;
 struct ac97_controller *ac97_ctrl;

 adev = to_ac97_device(dev);
 ac97_ctrl = adev->ac97_ctrl;
 ac97_ctrl->codecs[adev->num] = ((void*)0);
 of_node_put(dev->of_node);
 kfree(adev);
}

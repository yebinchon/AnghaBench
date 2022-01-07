
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ac97_controller {int parent; int adap; struct ac97_codec_device** codecs; } ;
struct TYPE_5__ {int of_node; int * parent; int * bus; int release; } ;
struct ac97_codec_device {unsigned int vendor_id; int num; TYPE_1__ dev; struct ac97_controller* ac97_ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ac97_bus_type ;
 int ac97_codec_release ;
 int ac97_of_get_child_device (struct ac97_controller*,int,unsigned int) ;
 int dev_name (int ) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 struct ac97_codec_device* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int ac97_codec_add(struct ac97_controller *ac97_ctrl, int idx,
     unsigned int vendor_id)
{
 struct ac97_codec_device *codec;
 int ret;

 codec = kzalloc(sizeof(*codec), GFP_KERNEL);
 if (!codec)
  return -ENOMEM;
 ac97_ctrl->codecs[idx] = codec;
 codec->vendor_id = vendor_id;
 codec->dev.release = ac97_codec_release;
 codec->dev.bus = &ac97_bus_type;
 codec->dev.parent = &ac97_ctrl->adap;
 codec->num = idx;
 codec->ac97_ctrl = ac97_ctrl;

 device_initialize(&codec->dev);
 dev_set_name(&codec->dev, "%s:%u", dev_name(ac97_ctrl->parent), idx);
 codec->dev.of_node = ac97_of_get_child_device(ac97_ctrl, idx,
            vendor_id);

 ret = device_add(&codec->dev);
 if (ret) {
  put_device(&codec->dev);
  return ret;
 }

 return 0;
}

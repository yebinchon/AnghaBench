
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct hda_beep* device_data; } ;
struct hda_beep {int registered; int dev; } ;


 int input_register_device (int ) ;

__attribute__((used)) static int beep_dev_register(struct snd_device *device)
{
 struct hda_beep *beep = device->device_data;
 int err;

 err = input_register_device(beep->dev);
 if (!err)
  beep->registered = 1;
 return err;
}

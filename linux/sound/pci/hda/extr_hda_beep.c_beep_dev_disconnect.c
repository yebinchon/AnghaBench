
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct hda_beep* device_data; } ;
struct hda_beep {int dev; scalar_t__ registered; } ;


 int input_free_device (int ) ;
 int input_unregister_device (int ) ;
 int turn_off_beep (struct hda_beep*) ;

__attribute__((used)) static int beep_dev_disconnect(struct snd_device *device)
{
 struct hda_beep *beep = device->device_data;

 if (beep->registered)
  input_unregister_device(beep->dev);
 else
  input_free_device(beep->dev);
 turn_off_beep(beep);
 return 0;
}

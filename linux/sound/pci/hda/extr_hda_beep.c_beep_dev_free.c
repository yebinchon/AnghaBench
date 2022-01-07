
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_device {struct hda_beep* device_data; } ;
struct hda_beep {TYPE_1__* codec; } ;
struct TYPE_2__ {int * beep; } ;


 int kfree (struct hda_beep*) ;

__attribute__((used)) static int beep_dev_free(struct snd_device *device)
{
 struct hda_beep *beep = device->device_data;

 beep->codec->beep = ((void*)0);
 kfree(beep);
 return 0;
}

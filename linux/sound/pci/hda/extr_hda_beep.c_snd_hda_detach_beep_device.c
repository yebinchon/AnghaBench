
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {scalar_t__ beep; int card; TYPE_1__* bus; } ;
struct TYPE_2__ {int shutdown; } ;


 int snd_device_free (int ,scalar_t__) ;

void snd_hda_detach_beep_device(struct hda_codec *codec)
{
 if (!codec->bus->shutdown && codec->beep)
  snd_device_free(codec->card, codec->beep);
}

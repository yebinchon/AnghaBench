
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ addr; char* vendor_name; char* chip_name; } ;
struct hda_codec {TYPE_3__ core; TYPE_2__* bus; TYPE_1__* card; } ;
struct TYPE_5__ {scalar_t__ mixer_assigned; } ;
struct TYPE_4__ {int * mixername; } ;


 int snd_hdac_device_set_chip_name (TYPE_3__*,char const*) ;
 int snprintf (int *,int,char*,char*,char*) ;

int snd_hda_codec_set_name(struct hda_codec *codec, const char *name)
{
 int err;

 if (!name)
  return 0;
 err = snd_hdac_device_set_chip_name(&codec->core, name);
 if (err < 0)
  return err;


 if (!*codec->card->mixername ||
     codec->bus->mixer_assigned >= codec->core.addr) {
  snprintf(codec->card->mixername,
    sizeof(codec->card->mixername), "%s %s",
    codec->core.vendor_name, codec->core.chip_name);
  codec->bus->mixer_assigned = codec->core.addr;
 }

 return 0;
}

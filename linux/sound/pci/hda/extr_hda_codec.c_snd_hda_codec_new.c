
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct hda_codec {int dummy; } ;
struct hda_bus {int dummy; } ;


 int snd_hda_codec_device_init (struct hda_bus*,struct snd_card*,unsigned int,struct hda_codec**) ;
 int snd_hda_codec_device_new (struct hda_bus*,struct snd_card*,unsigned int,struct hda_codec*) ;

int snd_hda_codec_new(struct hda_bus *bus, struct snd_card *card,
        unsigned int codec_addr, struct hda_codec **codecp)
{
 int ret;

 ret = snd_hda_codec_device_init(bus, card, codec_addr, codecp);
 if (ret < 0)
  return ret;

 return snd_hda_codec_device_new(bus, card, codec_addr, *codecp);
}

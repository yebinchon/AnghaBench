
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_bus {int codec_mask; } ;
struct hda_codec {int beep_mode; int jackpoll_interval; } ;
struct azx {int codec_probe_mask; TYPE_1__* card; int beep_mode; int jackpoll_interval; int bus; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int AZX_DEFAULT_CODECS ;
 int ENXIO ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int azx_init_chip (struct azx*,int) ;
 int azx_stop_chip (struct azx*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ probe_codec (struct azx*,int) ;
 int snd_hda_codec_new (int *,TYPE_1__*,int,struct hda_codec**) ;

int azx_probe_codecs(struct azx *chip, unsigned int max_slots)
{
 struct hdac_bus *bus = azx_bus(chip);
 int c, codecs, err;

 codecs = 0;
 if (!max_slots)
  max_slots = AZX_DEFAULT_CODECS;


 for (c = 0; c < max_slots; c++) {
  if ((bus->codec_mask & (1 << c)) & chip->codec_probe_mask) {
   if (probe_codec(chip, c) < 0) {



    dev_warn(chip->card->dev,
      "Codec #%d probe error; disabling it...\n", c);
    bus->codec_mask &= ~(1 << c);







    azx_stop_chip(chip);
    azx_init_chip(chip, 1);
   }
  }
 }


 for (c = 0; c < max_slots; c++) {
  if ((bus->codec_mask & (1 << c)) & chip->codec_probe_mask) {
   struct hda_codec *codec;
   err = snd_hda_codec_new(&chip->bus, chip->card, c, &codec);
   if (err < 0)
    continue;
   codec->jackpoll_interval = chip->jackpoll_interval;
   codec->beep_mode = chip->beep_mode;
   codecs++;
  }
 }
 if (!codecs) {
  dev_err(chip->card->dev, "no codecs initialized\n");
  return -ENXIO;
 }
 return 0;
}

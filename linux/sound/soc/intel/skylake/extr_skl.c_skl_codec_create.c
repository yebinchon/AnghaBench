
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int codec_mask; int dev; } ;


 int HDA_MAX_CODECS ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ probe_codec (struct hdac_bus*,int) ;
 int skl_init_chip (struct hdac_bus*,int) ;
 int snd_hdac_bus_stop_chip (struct hdac_bus*) ;

__attribute__((used)) static void skl_codec_create(struct hdac_bus *bus)
{
 int c, max_slots;

 max_slots = HDA_MAX_CODECS;


 for (c = 0; c < max_slots; c++) {
  if ((bus->codec_mask & (1 << c))) {
   if (probe_codec(bus, c) < 0) {




    dev_warn(bus->dev,
      "Codec #%d probe error; disabling it...\n", c);
    bus->codec_mask &= ~(1 << c);
    snd_hdac_bus_stop_chip(bus);
    skl_init_chip(bus, 1);
   }
  }
 }
}

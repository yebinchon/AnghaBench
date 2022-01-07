
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {size_t addr; int list; } ;
struct hdac_bus {int num_codecs; int codec_powered; struct hdac_device** caddr_tbl; int codec_list; int dev; } ;


 int EBUSY ;
 int dev_err (int ,char*,size_t) ;
 int list_add_tail (int *,int *) ;
 int set_bit (size_t,int *) ;

int snd_hdac_bus_add_device(struct hdac_bus *bus, struct hdac_device *codec)
{
 if (bus->caddr_tbl[codec->addr]) {
  dev_err(bus->dev, "address 0x%x is already occupied\n",
   codec->addr);
  return -EBUSY;
 }

 list_add_tail(&codec->list, &bus->codec_list);
 bus->caddr_tbl[codec->addr] = codec;
 set_bit(codec->addr, &bus->codec_powered);
 bus->num_codecs++;
 return 0;
}

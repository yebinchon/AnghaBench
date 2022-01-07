
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_ext_stream {int spib_addr; } ;
struct hdac_bus {int dev; int spbcap; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int writel (int ,int ) ;

int snd_hdac_ext_stream_set_spib(struct hdac_bus *bus,
     struct hdac_ext_stream *stream, u32 value)
{

 if (!bus->spbcap) {
  dev_err(bus->dev, "Address of SPB capability is NULL\n");
  return -EINVAL;
 }

 writel(value, stream->spib_addr);

 return 0;
}

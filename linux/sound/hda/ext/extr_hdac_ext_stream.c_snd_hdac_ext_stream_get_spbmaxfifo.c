
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_stream {int fifo_addr; } ;
struct hdac_bus {int dev; int spbcap; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int readl (int ) ;

int snd_hdac_ext_stream_get_spbmaxfifo(struct hdac_bus *bus,
     struct hdac_ext_stream *stream)
{

 if (!bus->spbcap) {
  dev_err(bus->dev, "Address of SPB capability is NULL\n");
  return -EINVAL;
 }

 return readl(stream->fifo_addr);
}

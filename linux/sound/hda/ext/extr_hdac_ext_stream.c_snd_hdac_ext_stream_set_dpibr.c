
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_ext_stream {int dpibr_addr; } ;
struct hdac_bus {int dev; int drsmcap; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int writel (int ,int ) ;

int snd_hdac_ext_stream_set_dpibr(struct hdac_bus *bus,
     struct hdac_ext_stream *stream, u32 value)
{

 if (!bus->drsmcap) {
  dev_err(bus->dev, "Address of DRSM capability is NULL\n");
  return -EINVAL;
 }

 writel(value, stream->dpibr_addr);

 return 0;
}

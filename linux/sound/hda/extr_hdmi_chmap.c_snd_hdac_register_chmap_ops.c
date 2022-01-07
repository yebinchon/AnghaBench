
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
struct hdac_chmap {struct hdac_device* hdac; int ops; } ;


 int chmap_ops ;
 int init_channel_allocations () ;

void snd_hdac_register_chmap_ops(struct hdac_device *hdac,
    struct hdac_chmap *chmap)
{
 chmap->ops = chmap_ops;
 chmap->hdac = hdac;
 init_channel_allocations();
}

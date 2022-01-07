
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int sd_int_sta_mask; int index; int direction; int stream_tag; int list; scalar_t__ sd_addr; struct hdac_bus* bus; } ;
struct hdac_bus {int stream_list; scalar_t__ remap_addr; } ;


 int list_add_tail (int *,int *) ;
 int snd_hdac_dsp_lock_init (struct hdac_stream*) ;

void snd_hdac_stream_init(struct hdac_bus *bus, struct hdac_stream *azx_dev,
     int idx, int direction, int tag)
{
 azx_dev->bus = bus;

 azx_dev->sd_addr = bus->remap_addr + (0x20 * idx + 0x80);

 azx_dev->sd_int_sta_mask = 1 << idx;
 azx_dev->index = idx;
 azx_dev->direction = direction;
 azx_dev->stream_tag = tag;
 snd_hdac_dsp_lock_init(azx_dev);
 list_add_tail(&azx_dev->list, &bus->stream_list);
}

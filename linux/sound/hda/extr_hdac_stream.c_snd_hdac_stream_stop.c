
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int index; int bus; } ;


 int INTCTL ;
 int snd_hdac_chip_updatel (int ,int ,int,int ) ;
 int snd_hdac_stream_clear (struct hdac_stream*) ;
 int trace_snd_hdac_stream_stop (int ,struct hdac_stream*) ;

void snd_hdac_stream_stop(struct hdac_stream *azx_dev)
{
 trace_snd_hdac_stream_stop(azx_dev->bus, azx_dev);

 snd_hdac_stream_clear(azx_dev);

 snd_hdac_chip_updatel(azx_dev->bus, INTCTL, 1 << azx_dev->index, 0);
}

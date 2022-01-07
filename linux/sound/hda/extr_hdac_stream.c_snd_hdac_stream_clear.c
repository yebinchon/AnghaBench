
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int running; } ;


 int SD_CTL ;
 int SD_CTL_3B ;
 int SD_CTL_DMA_START ;
 int SD_CTL_STRIPE_MASK ;
 int SD_INT_MASK ;
 int SD_STS ;
 int snd_hdac_stream_updateb (struct hdac_stream*,int ,int,int ) ;
 int snd_hdac_stream_writeb (struct hdac_stream*,int ,int) ;

void snd_hdac_stream_clear(struct hdac_stream *azx_dev)
{
 snd_hdac_stream_updateb(azx_dev, SD_CTL,
    SD_CTL_DMA_START | SD_INT_MASK, 0);
 snd_hdac_stream_writeb(azx_dev, SD_STS, SD_INT_MASK);
 snd_hdac_stream_updateb(azx_dev, SD_CTL_3B, SD_CTL_STRIPE_MASK, 0);
 azx_dev->running = 0;
}

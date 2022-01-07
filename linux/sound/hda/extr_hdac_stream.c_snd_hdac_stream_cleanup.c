
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {scalar_t__ format_val; scalar_t__ period_bytes; scalar_t__ bufsize; } ;


 int SD_BDLPL ;
 int SD_BDLPU ;
 int SD_CTL ;
 int snd_hdac_stream_writel (struct hdac_stream*,int ,int ) ;

void snd_hdac_stream_cleanup(struct hdac_stream *azx_dev)
{
 snd_hdac_stream_writel(azx_dev, SD_BDLPL, 0);
 snd_hdac_stream_writel(azx_dev, SD_BDLPU, 0);
 snd_hdac_stream_writel(azx_dev, SD_CTL, 0);
 azx_dev->bufsize = 0;
 azx_dev->period_bytes = 0;
 azx_dev->format_val = 0;
}

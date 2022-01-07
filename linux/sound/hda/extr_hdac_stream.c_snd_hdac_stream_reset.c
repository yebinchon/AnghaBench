
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {scalar_t__* posbuf; } ;


 int SD_CTL ;
 unsigned char SD_CTL_STREAM_RESET ;
 int snd_hdac_stream_clear (struct hdac_stream*) ;
 unsigned char snd_hdac_stream_readb (struct hdac_stream*,int ) ;
 int snd_hdac_stream_updateb (struct hdac_stream*,int ,int ,unsigned char) ;
 int snd_hdac_stream_writeb (struct hdac_stream*,int ,unsigned char) ;
 int udelay (int) ;

void snd_hdac_stream_reset(struct hdac_stream *azx_dev)
{
 unsigned char val;
 int timeout;

 snd_hdac_stream_clear(azx_dev);

 snd_hdac_stream_updateb(azx_dev, SD_CTL, 0, SD_CTL_STREAM_RESET);
 udelay(3);
 timeout = 300;
 do {
  val = snd_hdac_stream_readb(azx_dev, SD_CTL) &
   SD_CTL_STREAM_RESET;
  if (val)
   break;
 } while (--timeout);
 val &= ~SD_CTL_STREAM_RESET;
 snd_hdac_stream_writeb(azx_dev, SD_CTL, val);
 udelay(3);

 timeout = 300;

 do {
  val = snd_hdac_stream_readb(azx_dev, SD_CTL) &
   SD_CTL_STREAM_RESET;
  if (!val)
   break;
 } while (--timeout);


 if (azx_dev->posbuf)
  *azx_dev->posbuf = 0;
}

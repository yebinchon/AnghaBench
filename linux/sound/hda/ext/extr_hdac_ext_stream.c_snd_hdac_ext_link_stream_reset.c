
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_stream {scalar_t__ pplc_addr; } ;


 unsigned char AZX_PPLCCTL_STRST ;
 scalar_t__ AZX_REG_PPLCCTL ;
 unsigned char readl (scalar_t__) ;
 int snd_hdac_ext_link_stream_clear (struct hdac_ext_stream*) ;
 int snd_hdac_updatel (scalar_t__,scalar_t__,unsigned char,unsigned char) ;
 int udelay (int) ;
 int writel (unsigned char,scalar_t__) ;

void snd_hdac_ext_link_stream_reset(struct hdac_ext_stream *stream)
{
 unsigned char val;
 int timeout;

 snd_hdac_ext_link_stream_clear(stream);

 snd_hdac_updatel(stream->pplc_addr, AZX_REG_PPLCCTL,
    AZX_PPLCCTL_STRST, AZX_PPLCCTL_STRST);
 udelay(3);
 timeout = 50;
 do {
  val = readl(stream->pplc_addr + AZX_REG_PPLCCTL) &
    AZX_PPLCCTL_STRST;
  if (val)
   break;
  udelay(3);
 } while (--timeout);
 val &= ~AZX_PPLCCTL_STRST;
 writel(val, stream->pplc_addr + AZX_REG_PPLCCTL);
 udelay(3);

 timeout = 50;

 do {
  val = readl(stream->pplc_addr + AZX_REG_PPLCCTL) & AZX_PPLCCTL_STRST;
  if (!val)
   break;
  udelay(3);
 } while (--timeout);

}

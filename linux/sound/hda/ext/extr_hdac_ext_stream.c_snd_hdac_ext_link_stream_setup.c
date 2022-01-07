
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {unsigned int stream_tag; } ;
struct hdac_ext_stream {scalar_t__ pplc_addr; struct hdac_stream hstream; } ;


 unsigned int AZX_PPLCCTL_STRM_MASK ;
 unsigned int AZX_PPLCCTL_STRM_SHIFT ;
 scalar_t__ AZX_REG_PPLCCTL ;
 scalar_t__ AZX_REG_PPLCFMT ;
 unsigned int readl (scalar_t__) ;
 int snd_hdac_ext_link_stream_clear (struct hdac_ext_stream*) ;
 int writel (unsigned int,scalar_t__) ;
 int writew (int,scalar_t__) ;

int snd_hdac_ext_link_stream_setup(struct hdac_ext_stream *stream, int fmt)
{
 struct hdac_stream *hstream = &stream->hstream;
 unsigned int val;


 snd_hdac_ext_link_stream_clear(stream);

 val = readl(stream->pplc_addr + AZX_REG_PPLCCTL);
 val = (val & ~AZX_PPLCCTL_STRM_MASK) |
  (hstream->stream_tag << AZX_PPLCCTL_STRM_SHIFT);
 writel(val, stream->pplc_addr + AZX_REG_PPLCCTL);


 writew(fmt, stream->pplc_addr + AZX_REG_PPLCFMT);

 return 0;
}

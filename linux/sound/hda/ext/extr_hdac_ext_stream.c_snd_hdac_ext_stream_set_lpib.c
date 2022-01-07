
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_ext_stream {int hstream; } ;


 int SD_LPIB ;
 int snd_hdac_stream_writel (int *,int ,int ) ;

int snd_hdac_ext_stream_set_lpib(struct hdac_ext_stream *stream, u32 value)
{
 snd_hdac_stream_writel(&stream->hstream, SD_LPIB, value);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct hdsp {int dummy; } ;
struct TYPE_2__ {int stream; } ;


 int EIO ;
 char* hdsp_channel_buffer_location (struct hdsp*,int ,int) ;
 int memset (char*,int ,unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_hdsp_hw_silence(struct snd_pcm_substream *substream,
          int channel, unsigned long pos,
          unsigned long count)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 char *channel_buf;

 channel_buf = hdsp_channel_buffer_location (hdsp, substream->pstr->stream, channel);
 if (snd_BUG_ON(!channel_buf))
  return -EIO;
 memset(channel_buf + pos, 0, count);
 return 0;
}

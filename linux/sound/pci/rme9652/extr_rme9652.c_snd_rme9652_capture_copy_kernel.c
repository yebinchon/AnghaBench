
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rme9652 {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct TYPE_2__ {int stream; } ;


 int EIO ;
 int memcpy (void*,char*,unsigned long) ;
 char* rme9652_channel_buffer_location (struct snd_rme9652*,int ,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_rme9652* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_rme9652_capture_copy_kernel(struct snd_pcm_substream *substream,
        int channel, unsigned long pos,
        void *dst, unsigned long count)
{
 struct snd_rme9652 *rme9652 = snd_pcm_substream_chip(substream);
 char *channel_buf;

 channel_buf = rme9652_channel_buffer_location(rme9652,
            substream->pstr->stream,
            channel);
 if (snd_BUG_ON(!channel_buf))
  return -EIO;
 memcpy(dst, channel_buf + pos, count);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int dummy; } ;


 int LINE6_STREAM_CAPTURE_HELPER ;
 int line6_pcm_release (struct snd_line6_pcm*,int ) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_line6_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);

 line6_pcm_release(line6pcm, LINE6_STREAM_CAPTURE_HELPER);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_line6_pcm {TYPE_1__* line6; } ;
struct TYPE_2__ {int iso_buffers; } ;


 int submit_audio_in_urb (struct snd_line6_pcm*) ;

int line6_submit_audio_in_all_urbs(struct snd_line6_pcm *line6pcm)
{
 int ret = 0, i;

 for (i = 0; i < line6pcm->line6->iso_buffers; ++i) {
  ret = submit_audio_in_urb(line6pcm);
  if (ret < 0)
   break;
 }

 return ret;
}

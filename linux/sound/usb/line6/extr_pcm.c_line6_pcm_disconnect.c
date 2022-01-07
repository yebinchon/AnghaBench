
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int in; int out; } ;


 int line6_unlink_audio_urbs (struct snd_line6_pcm*,int *) ;
 int line6_wait_clear_audio_urbs (struct snd_line6_pcm*,int *) ;

void line6_pcm_disconnect(struct snd_line6_pcm *line6pcm)
{
 line6_unlink_audio_urbs(line6pcm, &line6pcm->out);
 line6_unlink_audio_urbs(line6pcm, &line6pcm->in);
 line6_wait_clear_audio_urbs(line6pcm, &line6pcm->out);
 line6_wait_clear_audio_urbs(line6pcm, &line6pcm->in);
}

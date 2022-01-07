
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int stream; TYPE_2__* runtime; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int state; } ;


 int EBADFD ;
 int EPIPE ;
 int ESTRPIPE ;






 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;

__attribute__((used)) static int do_pcm_hwsync(struct snd_pcm_substream *substream)
{
 switch (substream->runtime->status->state) {
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   return -EBADFD;

 case 130:
  return snd_pcm_update_hw_ptr(substream);
 case 131:
 case 132:
  return 0;
 case 129:
  return -ESTRPIPE;
 case 128:
  return -EPIPE;
 default:
  return -EBADFD;
 }
}

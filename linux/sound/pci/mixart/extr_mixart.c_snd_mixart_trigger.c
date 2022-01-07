
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* pcm; TYPE_1__* runtime; } ;
struct mixart_stream {void* status; } ;
struct TYPE_6__ {TYPE_2__* card; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct mixart_stream* private_data; } ;


 int EINVAL ;
 void* MIXART_STREAM_STATUS_OPEN ;
 void* MIXART_STREAM_STATUS_PAUSE ;
 void* MIXART_STREAM_STATUS_RUNNING ;




 int dev_dbg (int ,char*) ;
 int mixart_set_stream_state (struct mixart_stream*,int) ;

__attribute__((used)) static int snd_mixart_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct mixart_stream *stream = subs->runtime->private_data;

 switch (cmd) {
 case 129:

  dev_dbg(subs->pcm->card->dev, "SNDRV_PCM_TRIGGER_START\n");


  if( mixart_set_stream_state(stream, 1) )
   return -EINVAL;

  stream->status = MIXART_STREAM_STATUS_RUNNING;

  break;
 case 128:


  if( mixart_set_stream_state(stream, 0) )
   return -EINVAL;

  stream->status = MIXART_STREAM_STATUS_OPEN;

  dev_dbg(subs->pcm->card->dev, "SNDRV_PCM_TRIGGER_STOP\n");

  break;

 case 131:

  stream->status = MIXART_STREAM_STATUS_PAUSE;
  dev_dbg(subs->pcm->card->dev, "SNDRV_PCM_PAUSE_PUSH\n");
  break;
 case 130:

  stream->status = MIXART_STREAM_STATUS_RUNNING;
  dev_dbg(subs->pcm->card->dev, "SNDRV_PCM_PAUSE_RELEASE\n");
  break;
 default:
  return -EINVAL;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_pcm_substream {int stream; } ;
struct q6asm_dai_rtd {int audio_client; int state; int pcm_count; int pcm_irq_pos; struct snd_pcm_substream* substream; } ;






 int NO_TIMESTAMP ;
 int Q6ASM_STREAM_RUNNING ;
 int Q6ASM_STREAM_STOPPED ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int q6asm_read (int ) ;
 int q6asm_write_async (int ,int ,int ,int ,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void event_handler(uint32_t opcode, uint32_t token,
     uint32_t *payload, void *priv)
{
 struct q6asm_dai_rtd *prtd = priv;
 struct snd_pcm_substream *substream = prtd->substream;

 switch (opcode) {
 case 130:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   q6asm_write_async(prtd->audio_client,
       prtd->pcm_count, 0, 0, NO_TIMESTAMP);
  break;
 case 131:
  prtd->state = Q6ASM_STREAM_STOPPED;
  break;
 case 128: {
  prtd->pcm_irq_pos += prtd->pcm_count;
  snd_pcm_period_elapsed(substream);
  if (prtd->state == Q6ASM_STREAM_RUNNING)
   q6asm_write_async(prtd->audio_client,
        prtd->pcm_count, 0, 0, NO_TIMESTAMP);

  break;
  }
 case 129:
  prtd->pcm_irq_pos += prtd->pcm_count;
  snd_pcm_period_elapsed(substream);
  if (prtd->state == Q6ASM_STREAM_RUNNING)
   q6asm_read(prtd->audio_client);

  break;
 default:
  break;
 }
}

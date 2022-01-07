
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct snd_compr_stream {int dummy; } ;
struct q6asm_dai_rtd {int lock; scalar_t__ pcm_count; scalar_t__ bytes_sent; int audio_client; scalar_t__ bytes_received; int state; scalar_t__ copied_total; struct snd_compr_stream* cstream; } ;





 int NO_TIMESTAMP ;
 int Q6ASM_STREAM_RUNNING ;
 int Q6ASM_STREAM_STOPPED ;
 int q6asm_write_async (int ,scalar_t__,int ,int ,int ) ;
 int snd_compr_fragment_elapsed (struct snd_compr_stream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void compress_event_handler(uint32_t opcode, uint32_t token,
       uint32_t *payload, void *priv)
{
 struct q6asm_dai_rtd *prtd = priv;
 struct snd_compr_stream *substream = prtd->cstream;
 unsigned long flags;
 uint64_t avail;

 switch (opcode) {
 case 129:
  spin_lock_irqsave(&prtd->lock, flags);
  if (!prtd->bytes_sent) {
   q6asm_write_async(prtd->audio_client, prtd->pcm_count,
       0, 0, NO_TIMESTAMP);
   prtd->bytes_sent += prtd->pcm_count;
  }

  spin_unlock_irqrestore(&prtd->lock, flags);
  break;

 case 130:
  prtd->state = Q6ASM_STREAM_STOPPED;
  break;

 case 128:
  spin_lock_irqsave(&prtd->lock, flags);

  prtd->copied_total += prtd->pcm_count;
  snd_compr_fragment_elapsed(substream);

  if (prtd->state != Q6ASM_STREAM_RUNNING) {
   spin_unlock_irqrestore(&prtd->lock, flags);
   break;
  }

  avail = prtd->bytes_received - prtd->bytes_sent;

  if (avail >= prtd->pcm_count) {
   q6asm_write_async(prtd->audio_client,
        prtd->pcm_count, 0, 0, NO_TIMESTAMP);
   prtd->bytes_sent += prtd->pcm_count;
  }

  spin_unlock_irqrestore(&prtd->lock, flags);
  break;

 default:
  break;
 }
}

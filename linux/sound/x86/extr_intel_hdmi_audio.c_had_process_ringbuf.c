
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_intelhad {int period_bytes; int num_bds; int pcmbuf_head; int had_spinlock; int dev; int bd_head; } ;


 int AUD_BUF_LEN (int ) ;
 int EPIPE ;
 int dev_dbg (int ,char*,int) ;
 int had_advance_ringbuf (struct snd_pcm_substream*,struct snd_intelhad*) ;
 int had_read_register (struct snd_intelhad*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int had_process_ringbuf(struct snd_pcm_substream *substream,
          struct snd_intelhad *intelhaddata)
{
 int len, processed;
 unsigned long flags;

 processed = 0;
 spin_lock_irqsave(&intelhaddata->had_spinlock, flags);
 for (;;) {

  had_read_register(intelhaddata,
      AUD_BUF_LEN(intelhaddata->bd_head),
      &len);
  if (len < 0 || len > intelhaddata->period_bytes) {
   dev_dbg(intelhaddata->dev, "Invalid buf length %d\n",
    len);
   len = -EPIPE;
   goto out;
  }

  if (len > 0)
   break;


  if (++processed >= intelhaddata->num_bds) {
   len = -EPIPE;
   goto out;
  }
  had_advance_ringbuf(substream, intelhaddata);
 }

 len = intelhaddata->period_bytes - len;
 len += intelhaddata->period_bytes * intelhaddata->pcmbuf_head;
 out:
 spin_unlock_irqrestore(&intelhaddata->had_spinlock, flags);
 return len;
}

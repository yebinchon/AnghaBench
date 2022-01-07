
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid ;
struct snd_timer_instance {int flags; struct snd_seq_queue* callback_data; int callback; } ;
struct snd_timer_id {scalar_t__ dev_class; scalar_t__ device; int card; void* dev_sclass; } ;
struct snd_seq_timer {scalar_t__ type; int lock; struct snd_timer_instance* timeri; struct snd_timer_id alsa_id; } ;
struct snd_seq_queue {int queue; struct snd_seq_timer* timer; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ;
 scalar_t__ SNDRV_TIMER_CLASS_GLOBAL ;
 scalar_t__ SNDRV_TIMER_CLASS_SLAVE ;
 scalar_t__ SNDRV_TIMER_GLOBAL_SYSTEM ;
 int SNDRV_TIMER_IFLG_AUTO ;
 void* SNDRV_TIMER_SCLASS_SEQUENCER ;
 int memset (struct snd_timer_id*,int ,int) ;
 int pr_err (char*,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_timer_interrupt ;
 int snd_timer_open (struct snd_timer_instance**,char*,struct snd_timer_id*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sprintf (char*,char*,int) ;

int snd_seq_timer_open(struct snd_seq_queue *q)
{
 struct snd_timer_instance *t;
 struct snd_seq_timer *tmr;
 char str[32];
 int err;

 tmr = q->timer;
 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 if (tmr->timeri)
  return -EBUSY;
 sprintf(str, "sequencer queue %i", q->queue);
 if (tmr->type != SNDRV_SEQ_TIMER_ALSA)
  return -EINVAL;
 if (tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_SLAVE)
  tmr->alsa_id.dev_sclass = SNDRV_TIMER_SCLASS_SEQUENCER;
 err = snd_timer_open(&t, str, &tmr->alsa_id, q->queue);
 if (err < 0 && tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_SLAVE) {
  if (tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_GLOBAL ||
      tmr->alsa_id.device != SNDRV_TIMER_GLOBAL_SYSTEM) {
   struct snd_timer_id tid;
   memset(&tid, 0, sizeof(tid));
   tid.dev_class = SNDRV_TIMER_CLASS_GLOBAL;
   tid.dev_sclass = SNDRV_TIMER_SCLASS_SEQUENCER;
   tid.card = -1;
   tid.device = SNDRV_TIMER_GLOBAL_SYSTEM;
   err = snd_timer_open(&t, str, &tid, q->queue);
  }
 }
 if (err < 0) {
  pr_err("ALSA: seq fatal error: cannot create timer (%i)\n", err);
  return err;
 }
 t->callback = snd_seq_timer_interrupt;
 t->callback_data = q;
 t->flags |= SNDRV_TIMER_IFLG_AUTO;
 spin_lock_irq(&tmr->lock);
 tmr->timeri = t;
 spin_unlock_irq(&tmr->lock);
 return 0;
}

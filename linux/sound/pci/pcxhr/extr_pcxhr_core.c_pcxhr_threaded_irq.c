
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int nb_streams_capt; int nb_streams_play; int * playback_stream; int * capture_stream; } ;
struct pcxhr_mgr {int src_it_dsp; int dsp_time_last; int granularity; int num_cards; int lock; struct snd_pcxhr** chip; TYPE_1__* pci; int dsp_time_err; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int PCXHR_DSP_TIME_INVALID ;
 int PCXHR_DSP_TIME_MASK ;
 int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 int PCXHR_IRQ_TIMER ;
 int PCXHR_PLX_MBOX4 ;
 int dev_dbg (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_msg_thread (struct pcxhr_mgr*) ;
 int pcxhr_update_timer_pos (struct pcxhr_mgr*,int *,int) ;

irqreturn_t pcxhr_threaded_irq(int irq, void *dev_id)
{
 struct pcxhr_mgr *mgr = dev_id;
 int i, j;
 struct snd_pcxhr *chip;

 mutex_lock(&mgr->lock);
 if (mgr->src_it_dsp & PCXHR_IRQ_TIMER) {

  int dsp_time_new =
   PCXHR_INPL(mgr, PCXHR_PLX_MBOX4) & PCXHR_DSP_TIME_MASK;
  int dsp_time_diff = dsp_time_new - mgr->dsp_time_last;

  if ((dsp_time_diff < 0) &&
      (mgr->dsp_time_last != PCXHR_DSP_TIME_INVALID)) {

   int tmp_diff = dsp_time_diff + PCXHR_DSP_TIME_MASK + 1;
   dev_dbg(&mgr->pci->dev,
    "WARNING DSP timestamp old(%d) new(%d)",
        mgr->dsp_time_last, dsp_time_new);
   if (tmp_diff > 0 && tmp_diff <= (2*mgr->granularity)) {
    dev_dbg(&mgr->pci->dev,
     "-> timestamp wraparound OK: "
         "diff=%d\n", tmp_diff);
    dsp_time_diff = tmp_diff;
   } else {
    dev_dbg(&mgr->pci->dev,
     "-> resynchronize all streams\n");
    mgr->dsp_time_err++;
   }
  }
  mgr->dsp_time_last = dsp_time_new;

  for (i = 0; i < mgr->num_cards; i++) {
   chip = mgr->chip[i];
   for (j = 0; j < chip->nb_streams_capt; j++)
    pcxhr_update_timer_pos(mgr,
      &chip->capture_stream[j],
      dsp_time_diff);
  }
  for (i = 0; i < mgr->num_cards; i++) {
   chip = mgr->chip[i];
   for (j = 0; j < chip->nb_streams_play; j++)
    pcxhr_update_timer_pos(mgr,
      &chip->playback_stream[j],
      dsp_time_diff);
  }
 }

 pcxhr_msg_thread(mgr);
 mutex_unlock(&mgr->lock);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct psc_dma_stream {int period_current; int stream; scalar_t__ active; TYPE_2__* psc_dma; int period_count; TYPE_1__* runtime; int bcom_task; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int periods; } ;


 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 int bcom_retrieve_buffer (int ,int *,int *) ;
 int psc_dma_bcom_enqueue_next_buffer (struct psc_dma_stream*) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t psc_dma_bcom_irq(int irq, void *_psc_dma_stream)
{
 struct psc_dma_stream *s = _psc_dma_stream;

 spin_lock(&s->psc_dma->lock);


 while (bcom_buffer_done(s->bcom_task)) {
  bcom_retrieve_buffer(s->bcom_task, ((void*)0), ((void*)0));

  s->period_current = (s->period_current+1) % s->runtime->periods;
  s->period_count++;

  psc_dma_bcom_enqueue_next_buffer(s);
 }
 spin_unlock(&s->psc_dma->lock);



 if (s->active)
  snd_pcm_period_elapsed(s->stream);

 return IRQ_HANDLED;
}

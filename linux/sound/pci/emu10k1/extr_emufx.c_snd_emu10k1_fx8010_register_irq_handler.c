
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_fx8010_irq {unsigned char gpr_running; struct snd_emu10k1_fx8010_irq* next; void* private_data; int * handler; } ;
struct TYPE_2__ {int irq_lock; struct snd_emu10k1_fx8010_irq* irq_handlers; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; int dsp_interrupt; } ;
typedef int snd_fx8010_irq_handler_t ;


 int INTE_FXDSPENABLE ;
 int snd_emu10k1_fx8010_interrupt ;
 int snd_emu10k1_intr_enable (struct snd_emu10k1*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_emu10k1_fx8010_register_irq_handler(struct snd_emu10k1 *emu,
         snd_fx8010_irq_handler_t *handler,
         unsigned char gpr_running,
         void *private_data,
         struct snd_emu10k1_fx8010_irq *irq)
{
 unsigned long flags;

 irq->handler = handler;
 irq->gpr_running = gpr_running;
 irq->private_data = private_data;
 irq->next = ((void*)0);
 spin_lock_irqsave(&emu->fx8010.irq_lock, flags);
 if (emu->fx8010.irq_handlers == ((void*)0)) {
  emu->fx8010.irq_handlers = irq;
  emu->dsp_interrupt = snd_emu10k1_fx8010_interrupt;
  snd_emu10k1_intr_enable(emu, INTE_FXDSPENABLE);
 } else {
  irq->next = emu->fx8010.irq_handlers;
  emu->fx8010.irq_handlers = irq;
 }
 spin_unlock_irqrestore(&emu->fx8010.irq_lock, flags);
 return 0;
}

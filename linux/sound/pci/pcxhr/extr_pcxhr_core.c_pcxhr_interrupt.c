
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {int timer_toggle; unsigned int src_it_dsp; TYPE_1__* pci; int dsp_time_last; int dsp_time_err; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCXHR_DSP_TIME_INVALID ;
 unsigned int PCXHR_FATAL_DSP_ERR ;
 unsigned int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 unsigned int PCXHR_IRQCS_ACTIVE_PCIDB ;
 unsigned int PCXHR_IRQ_ASYNC ;
 unsigned int PCXHR_IRQ_MASK ;
 unsigned int PCXHR_IRQ_TIMER ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_IRQCS ;
 int PCXHR_PLX_L2PCIDB ;
 int dev_dbg (int *,char*,...) ;

irqreturn_t pcxhr_interrupt(int irq, void *dev_id)
{
 struct pcxhr_mgr *mgr = dev_id;
 unsigned int reg;
 bool wake_thread = 0;

 reg = PCXHR_INPL(mgr, PCXHR_PLX_IRQCS);
 if (! (reg & PCXHR_IRQCS_ACTIVE_PCIDB)) {

  return IRQ_NONE;
 }


 reg = PCXHR_INPL(mgr, PCXHR_PLX_L2PCIDB);
 PCXHR_OUTPL(mgr, PCXHR_PLX_L2PCIDB, reg);


 if (reg & PCXHR_IRQ_TIMER) {
  int timer_toggle = reg & PCXHR_IRQ_TIMER;
  if (timer_toggle == mgr->timer_toggle) {
   dev_dbg(&mgr->pci->dev, "ERROR TIMER TOGGLE\n");
   mgr->dsp_time_err++;
  }

  mgr->timer_toggle = timer_toggle;
  mgr->src_it_dsp = reg;
  wake_thread = 1;
 }


 if (reg & PCXHR_IRQ_MASK) {
  if (reg & PCXHR_IRQ_ASYNC) {




   mgr->dsp_time_last = PCXHR_DSP_TIME_INVALID;
  }
  mgr->src_it_dsp = reg;
  wake_thread = 1;
 }





 return wake_thread ? IRQ_WAKE_THREAD : IRQ_HANDLED;
}

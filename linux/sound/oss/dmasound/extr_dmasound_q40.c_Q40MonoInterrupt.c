
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int lock; } ;


 int * DAC_LEFT ;
 int * DAC_RIGHT ;
 int IRQ_HANDLED ;
 int Q40Interrupt () ;
 int SAMPLE_CLEAR_REG ;
 TYPE_1__ dmasound ;
 int master_outb (int,int ) ;
 int * q40_pp ;
 scalar_t__ q40_sc ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t Q40MonoInterrupt(int irq, void *dummy)
{
 spin_lock(&dmasound.lock);
        if (q40_sc>0){
            *DAC_LEFT=*q40_pp;
     *DAC_RIGHT=*q40_pp++;
     q40_sc --;
     master_outb(1,SAMPLE_CLEAR_REG);
 }else Q40Interrupt();
 spin_unlock(&dmasound.lock);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interwave {int wss; int pcm_status_reg; int gus; int gus_status_reg; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int inb (int ) ;
 int snd_gus_interrupt (int,int ) ;
 int snd_wss_interrupt (int,int ) ;

__attribute__((used)) static irqreturn_t snd_interwave_interrupt(int irq, void *dev_id)
{
 struct snd_interwave *iwcard = dev_id;
 int loop, max = 5;
 int handled = 0;

 do {
  loop = 0;
  if (inb(iwcard->gus_status_reg)) {
   handled = 1;
   snd_gus_interrupt(irq, iwcard->gus);
   loop++;
  }
  if (inb(iwcard->pcm_status_reg) & 0x01) {
   handled = 1;
   snd_wss_interrupt(irq, iwcard->wss);
   loop++;
  }
 } while (loop && --max > 0);
 return IRQ_RETVAL(handled);
}

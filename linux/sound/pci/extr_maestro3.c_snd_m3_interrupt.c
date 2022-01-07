
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_m3 {int num_substreams; scalar_t__ iobase; TYPE_1__* rmidi; int reg_lock; struct m3_dma* substreams; int hwvol_work; } ;
struct m3_dma {scalar_t__ running; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int private_data; } ;


 scalar_t__ ASSP_CONTROL_B ;
 scalar_t__ ASSP_HOST_INT_STATUS ;
 int ASSP_INT_PENDING ;
 int DSP2HOST_REQ_TIMER ;
 scalar_t__ HOST_INT_STATUS ;
 int HV_INT_PENDING ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MPU401_INT_PENDING ;
 int STOP_ASSP_CLOCK ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int regs ;
 int schedule_work (int *) ;
 int snd_m3_update_ptr (struct snd_m3*,struct m3_dma*) ;
 int snd_mpu401_uart_interrupt (int,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_m3_interrupt(int irq, void *dev_id)
{
 struct snd_m3 *chip = dev_id;
 u8 status;
 int i;

 status = inb(chip->iobase + HOST_INT_STATUS);

 if (status == 0xff)
  return IRQ_NONE;

 if (status & HV_INT_PENDING)
  schedule_work(&chip->hwvol_work);





 if (status & ASSP_INT_PENDING) {
  u8 ctl = inb(chip->iobase + ASSP_CONTROL_B);
  if (!(ctl & STOP_ASSP_CLOCK)) {
   ctl = inb(chip->iobase + ASSP_HOST_INT_STATUS);
   if (ctl & DSP2HOST_REQ_TIMER) {
    outb(DSP2HOST_REQ_TIMER, chip->iobase + ASSP_HOST_INT_STATUS);

    spin_lock(&chip->reg_lock);
    for (i = 0; i < chip->num_substreams; i++) {
     struct m3_dma *s = &chip->substreams[i];
     if (s->running)
      snd_m3_update_ptr(chip, s);
    }
    spin_unlock(&chip->reg_lock);
   }
  }
 }







 outb(status, chip->iobase + HOST_INT_STATUS);

 return IRQ_HANDLED;
}

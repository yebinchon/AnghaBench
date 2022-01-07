
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct snd_azf3328 {TYPE_2__* card; TYPE_1__* rmidi; int codecs; int reg_lock; TYPE_3__* timer; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int sticks; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int private_data; } ;


 int IDX_IO_IRQSTATUS ;
 scalar_t__ IDX_IO_TIMER_VALUE ;
 int IRQ_GAMEPORT ;
 int IRQ_HANDLED ;
 int IRQ_I2S_OUT ;
 int IRQ_MPU401 ;
 int IRQ_NONE ;
 int IRQ_PLAYBACK ;
 int IRQ_RECORDING ;
 int IRQ_TIMER ;
 int dev_dbg (int ,char*,...) ;
 int snd_azf3328_ctrl_inb (struct snd_azf3328*,int ) ;
 int snd_azf3328_ctrl_outb (struct snd_azf3328*,scalar_t__,int) ;
 int snd_azf3328_gameport_interrupt (struct snd_azf3328*) ;
 int snd_azf3328_pcm_interrupt (struct snd_azf3328*,int ,int) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_timer_interrupt (TYPE_3__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
snd_azf3328_interrupt(int irq, void *dev_id)
{
 struct snd_azf3328 *chip = dev_id;
 u8 status;
 static unsigned long irq_count;

 status = snd_azf3328_ctrl_inb(chip, IDX_IO_IRQSTATUS);


 if (!(status &
  (IRQ_PLAYBACK|IRQ_RECORDING|IRQ_I2S_OUT
  |IRQ_GAMEPORT|IRQ_MPU401|IRQ_TIMER)
 ))
  return IRQ_NONE;

 dev_dbg(chip->card->dev,
  "irq_count %ld! IDX_IO_IRQSTATUS %04x\n",
   irq_count++ ,
   status);

 if (status & IRQ_TIMER) {




  if (chip->timer)
   snd_timer_interrupt(chip->timer, chip->timer->sticks);

                spin_lock(&chip->reg_lock);
  snd_azf3328_ctrl_outb(chip, IDX_IO_TIMER_VALUE + 3, 0x07);
  spin_unlock(&chip->reg_lock);
  dev_dbg(chip->card->dev, "timer IRQ\n");
 }

 if (status & (IRQ_PLAYBACK|IRQ_RECORDING|IRQ_I2S_OUT))
  snd_azf3328_pcm_interrupt(chip, chip->codecs, status);

 if (status & IRQ_GAMEPORT)
  snd_azf3328_gameport_interrupt(chip);



 if (status & IRQ_MPU401) {
  snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);



  dev_dbg(chip->card->dev, "MPU401 IRQ\n");
 }
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_mpu401 {int info_flags; int mode; int output_lock; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;


 int MPU401_INFO_TX_IRQ ;
 int MPU401_MODE_BIT_OUTPUT_TRIGGER ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int snd_mpu401_uart_add_timer (struct snd_mpu401*,int ) ;
 int snd_mpu401_uart_output_write (struct snd_mpu401*) ;
 int snd_mpu401_uart_remove_timer (struct snd_mpu401*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
snd_mpu401_uart_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_mpu401 *mpu;

 mpu = substream->rmidi->private_data;
 if (up) {
  set_bit(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode);





  if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))
   snd_mpu401_uart_add_timer(mpu, 0);


  spin_lock_irqsave(&mpu->output_lock, flags);
  snd_mpu401_uart_output_write(mpu);
  spin_unlock_irqrestore(&mpu->output_lock, flags);
 } else {
  if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))
   snd_mpu401_uart_remove_timer(mpu, 0);
  clear_bit(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode);
 }
}

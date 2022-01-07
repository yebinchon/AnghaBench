
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_mpu401 {int info_flags; int mode; int input_lock; int (* read ) (struct snd_mpu401*,int ) ;} ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;


 int MPU401D (struct snd_mpu401*) ;
 int MPU401_INFO_USE_TIMER ;
 int MPU401_MODE_BIT_INPUT_TRIGGER ;
 int clear_bit (int ,int *) ;
 int snd_mpu401_uart_add_timer (struct snd_mpu401*,int) ;
 int snd_mpu401_uart_input_read (struct snd_mpu401*) ;
 int snd_mpu401_uart_remove_timer (struct snd_mpu401*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_mpu401*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
snd_mpu401_uart_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_mpu401 *mpu;
 int max = 64;

 mpu = substream->rmidi->private_data;
 if (up) {
  if (! test_and_set_bit(MPU401_MODE_BIT_INPUT_TRIGGER,
           &mpu->mode)) {

   while (max-- > 0)
    mpu->read(mpu, MPU401D(mpu));
   if (mpu->info_flags & MPU401_INFO_USE_TIMER)
    snd_mpu401_uart_add_timer(mpu, 1);
  }


  spin_lock_irqsave(&mpu->input_lock, flags);
  snd_mpu401_uart_input_read(mpu);
  spin_unlock_irqrestore(&mpu->input_lock, flags);
 } else {
  if (mpu->info_flags & MPU401_INFO_USE_TIMER)
   snd_mpu401_uart_remove_timer(mpu, 1);
  clear_bit(MPU401_MODE_BIT_INPUT_TRIGGER, &mpu->mode);
 }

}

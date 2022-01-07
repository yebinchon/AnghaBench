
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emu10k1x_midi {int input_lock; } ;
struct emu10k1x {int port; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MPU401_ACK ;
 int dev_err (int ,char*,unsigned char,int ,int ,scalar_t__) ;
 scalar_t__ mpu401_input_avail (struct emu10k1x*,struct emu10k1x_midi*) ;
 scalar_t__ mpu401_read_data (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_read_stat (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_write_cmd (struct emu10k1x*,struct emu10k1x_midi*,unsigned char) ;
 int mpu401_write_data (struct emu10k1x*,struct emu10k1x_midi*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1x_midi_cmd(struct emu10k1x * emu,
      struct emu10k1x_midi *midi, unsigned char cmd, int ack)
{
 unsigned long flags;
 int timeout, ok;

 spin_lock_irqsave(&midi->input_lock, flags);
 mpu401_write_data(emu, midi, 0x00);


 mpu401_write_cmd(emu, midi, cmd);
 if (ack) {
  ok = 0;
  timeout = 10000;
  while (!ok && timeout-- > 0) {
   if (mpu401_input_avail(emu, midi)) {
    if (mpu401_read_data(emu, midi) == MPU401_ACK)
     ok = 1;
   }
  }
  if (!ok && mpu401_read_data(emu, midi) == MPU401_ACK)
   ok = 1;
 } else {
  ok = 1;
 }
 spin_unlock_irqrestore(&midi->input_lock, flags);
 if (!ok) {
  dev_err(emu->card->dev,
   "midi_cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)!!!\n",
      cmd, emu->port,
      mpu401_read_stat(emu, midi),
      mpu401_read_data(emu, midi));
  return 1;
 }
 return 0;
}

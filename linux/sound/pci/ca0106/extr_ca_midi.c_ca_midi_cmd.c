
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {scalar_t__ ack; int dev_id; int (* get_dev_id_port ) (int ) ;int input_lock; } ;


 scalar_t__ ca_midi_input_avail (struct snd_ca_midi*) ;
 scalar_t__ ca_midi_read_data (struct snd_ca_midi*) ;
 int ca_midi_read_stat (struct snd_ca_midi*) ;
 int ca_midi_write_cmd (struct snd_ca_midi*,unsigned char) ;
 int ca_midi_write_data (struct snd_ca_midi*,int) ;
 int pr_err (char*,unsigned char,int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;

__attribute__((used)) static void ca_midi_cmd(struct snd_ca_midi *midi, unsigned char cmd, int ack)
{
 unsigned long flags;
 int timeout, ok;

 spin_lock_irqsave(&midi->input_lock, flags);
 ca_midi_write_data(midi, 0x00);


 ca_midi_write_cmd(midi, cmd);
 if (ack) {
  ok = 0;
  timeout = 10000;
  while (!ok && timeout-- > 0) {
   if (ca_midi_input_avail(midi)) {
    if (ca_midi_read_data(midi) == midi->ack)
     ok = 1;
   }
  }
  if (!ok && ca_midi_read_data(midi) == midi->ack)
   ok = 1;
 } else {
  ok = 1;
 }
 spin_unlock_irqrestore(&midi->input_lock, flags);
 if (!ok)
  pr_err("ca_midi_cmd: 0x%x failed at 0x%x (status = 0x%x, data = 0x%x)!!!\n",
      cmd,
      midi->get_dev_id_port(midi->dev_id),
      ca_midi_read_stat(midi),
      ca_midi_read_data(midi));
}

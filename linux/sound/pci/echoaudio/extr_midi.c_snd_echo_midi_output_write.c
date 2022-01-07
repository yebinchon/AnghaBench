
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct echoaudio {int midi_full; int lock; TYPE_1__* card; int timer; scalar_t__ tinuse; int midi_out; } ;
struct TYPE_2__ {int dev; } ;


 int HZ ;
 int MIDI_OUT_BUFFER_SIZE ;
 struct echoaudio* chip ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 struct echoaudio* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_rawmidi_transmit_ack (int ,int) ;
 int snd_rawmidi_transmit_empty (int ) ;
 int snd_rawmidi_transmit_peek (int ,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 int write_midi (struct echoaudio*,unsigned char*,int) ;

__attribute__((used)) static void snd_echo_midi_output_write(struct timer_list *t)
{
 struct echoaudio *chip = from_timer(chip, t, timer);
 unsigned long flags;
 int bytes, sent, time;
 unsigned char buf[MIDI_OUT_BUFFER_SIZE - 1];



 sent = bytes = 0;
 spin_lock_irqsave(&chip->lock, flags);
 chip->midi_full = 0;
 if (!snd_rawmidi_transmit_empty(chip->midi_out)) {
  bytes = snd_rawmidi_transmit_peek(chip->midi_out, buf,
        MIDI_OUT_BUFFER_SIZE - 1);
  dev_dbg(chip->card->dev, "Try to send %d bytes...\n", bytes);
  sent = write_midi(chip, buf, bytes);
  if (sent < 0) {
   dev_err(chip->card->dev,
    "write_midi() error %d\n", sent);

   sent = 9000;
   chip->midi_full = 1;
  } else if (sent > 0) {
   dev_dbg(chip->card->dev, "%d bytes sent\n", sent);
   snd_rawmidi_transmit_ack(chip->midi_out, sent);
  } else {


   dev_dbg(chip->card->dev, "Full\n");
   sent = 32;
   chip->midi_full = 1;
  }
 }


 if (!snd_rawmidi_transmit_empty(chip->midi_out) && chip->tinuse) {


  time = (sent << 3) / 25 + 1;
  mod_timer(&chip->timer, jiffies + (time * HZ + 999) / 1000);
  dev_dbg(chip->card->dev,
   "Timer armed(%d)\n", ((time * HZ + 999) / 1000));
 }
 spin_unlock_irqrestore(&chip->lock, flags);
}

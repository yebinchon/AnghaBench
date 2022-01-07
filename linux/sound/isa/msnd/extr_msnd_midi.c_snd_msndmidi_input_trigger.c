
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_msndmidi {int input_lock; int mode; } ;
struct TYPE_2__ {struct snd_msndmidi* private_data; } ;


 int MSNDMIDI_MODE_BIT_INPUT_TRIGGER ;
 int clear_bit (int ,int *) ;
 int snd_msndmidi_input_drop (struct snd_msndmidi*) ;
 int snd_msndmidi_input_read (struct snd_msndmidi*) ;
 int snd_printdd (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void snd_msndmidi_input_trigger(struct snd_rawmidi_substream *substream,
     int up)
{
 unsigned long flags;
 struct snd_msndmidi *mpu;

 snd_printdd("snd_msndmidi_input_trigger(, %i)\n", up);

 mpu = substream->rmidi->private_data;
 spin_lock_irqsave(&mpu->input_lock, flags);
 if (up) {
  if (!test_and_set_bit(MSNDMIDI_MODE_BIT_INPUT_TRIGGER,
          &mpu->mode))
   snd_msndmidi_input_drop(mpu);
 } else {
  clear_bit(MSNDMIDI_MODE_BIT_INPUT_TRIGGER, &mpu->mode);
 }
 spin_unlock_irqrestore(&mpu->input_lock, flags);
 if (up)
  snd_msndmidi_input_read(mpu);
}

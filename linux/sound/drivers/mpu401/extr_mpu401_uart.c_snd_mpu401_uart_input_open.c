
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_mpu401 {int (* open_input ) (struct snd_mpu401*) ;int (* close_input ) (struct snd_mpu401*) ;int mode; struct snd_rawmidi_substream* substream_input; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;


 int EIO ;
 int MPU401_MODE_BIT_INPUT ;
 int MPU401_MODE_BIT_OUTPUT ;
 int set_bit (int ,int *) ;
 scalar_t__ snd_mpu401_do_reset (struct snd_mpu401*) ;
 int stub1 (struct snd_mpu401*) ;
 int stub2 (struct snd_mpu401*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int snd_mpu401_uart_input_open(struct snd_rawmidi_substream *substream)
{
 struct snd_mpu401 *mpu;
 int err;

 mpu = substream->rmidi->private_data;
 if (mpu->open_input && (err = mpu->open_input(mpu)) < 0)
  return err;
 if (! test_bit(MPU401_MODE_BIT_OUTPUT, &mpu->mode)) {
  if (snd_mpu401_do_reset(mpu) < 0)
   goto error_out;
 }
 mpu->substream_input = substream;
 set_bit(MPU401_MODE_BIT_INPUT, &mpu->mode);
 return 0;

error_out:
 if (mpu->open_input && mpu->close_input)
  mpu->close_input(mpu);
 return -EIO;
}

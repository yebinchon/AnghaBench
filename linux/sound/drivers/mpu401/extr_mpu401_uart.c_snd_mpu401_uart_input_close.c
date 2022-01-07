
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_mpu401 {int (* close_input ) (struct snd_mpu401*) ;int mode; int * substream_input; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;


 int EIO ;
 int MPU401_MODE_BIT_INPUT ;
 int MPU401_MODE_BIT_OUTPUT ;
 int MPU401_RESET ;
 int clear_bit (int ,int *) ;
 int snd_mpu401_uart_cmd (struct snd_mpu401*,int ,int ) ;
 int stub1 (struct snd_mpu401*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int snd_mpu401_uart_input_close(struct snd_rawmidi_substream *substream)
{
 struct snd_mpu401 *mpu;
 int err = 0;

 mpu = substream->rmidi->private_data;
 clear_bit(MPU401_MODE_BIT_INPUT, &mpu->mode);
 mpu->substream_input = ((void*)0);
 if (! test_bit(MPU401_MODE_BIT_OUTPUT, &mpu->mode))
  err = snd_mpu401_uart_cmd(mpu, MPU401_RESET, 0);
 if (mpu->close_input)
  mpu->close_input(mpu);
 if (err)
  return -EIO;
 return 0;
}

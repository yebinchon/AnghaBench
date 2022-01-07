
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int substream_output; int (* write ) (struct snd_mpu401*,unsigned char,int ) ;} ;


 int MPU401D (struct snd_mpu401*) ;
 int snd_mpu401_output_ready (struct snd_mpu401*) ;
 int snd_mpu401_uart_remove_timer (struct snd_mpu401*,int ) ;
 int snd_rawmidi_transmit_ack (int ,int) ;
 int snd_rawmidi_transmit_peek (int ,unsigned char*,int) ;
 int stub1 (struct snd_mpu401*,unsigned char,int ) ;

__attribute__((used)) static void snd_mpu401_uart_output_write(struct snd_mpu401 * mpu)
{
 unsigned char byte;
 int max = 256;

 do {
  if (snd_rawmidi_transmit_peek(mpu->substream_output,
           &byte, 1) == 1) {




   if (!snd_mpu401_output_ready(mpu) &&
       !snd_mpu401_output_ready(mpu))
    break;
   mpu->write(mpu, byte, MPU401D(mpu));
   snd_rawmidi_transmit_ack(mpu->substream_output, 1);
  } else {
   snd_mpu401_uart_remove_timer (mpu, 0);
   break;
  }
 } while (--max > 0);
}

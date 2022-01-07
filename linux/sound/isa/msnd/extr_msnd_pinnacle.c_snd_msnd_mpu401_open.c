
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int private_data; } ;


 int HDEX_MIDI_IN_START ;
 int snd_msnd_enable_irq (int ) ;
 int snd_msnd_send_dsp_cmd (int ,int ) ;

__attribute__((used)) static int snd_msnd_mpu401_open(struct snd_mpu401 *mpu)
{
 snd_msnd_enable_irq(mpu->private_data);
 snd_msnd_send_dsp_cmd(mpu->private_data, HDEX_MIDI_IN_START);
 return 0;
}

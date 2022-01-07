
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_msndmidi {int dev; int * substream_input; int mode; } ;
struct TYPE_2__ {struct snd_msndmidi* private_data; } ;


 int HDEX_MIDI_IN_STOP ;
 int MSNDMIDI_MODE_BIT_INPUT ;
 int clear_bit (int ,int *) ;
 int snd_msnd_disable_irq (int ) ;
 int snd_msnd_send_dsp_cmd (int ,int ) ;

__attribute__((used)) static int snd_msndmidi_input_close(struct snd_rawmidi_substream *substream)
{
 struct snd_msndmidi *mpu;

 mpu = substream->rmidi->private_data;
 snd_msnd_send_dsp_cmd(mpu->dev, HDEX_MIDI_IN_STOP);
 clear_bit(MSNDMIDI_MODE_BIT_INPUT, &mpu->mode);
 mpu->substream_input = ((void*)0);
 snd_msnd_disable_irq(mpu->dev);
 return 0;
}

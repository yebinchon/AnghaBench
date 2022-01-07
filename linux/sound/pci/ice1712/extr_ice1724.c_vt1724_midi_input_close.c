
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;


 int VT1724_IRQ_MPU_RX ;
 int vt1724_enable_midi_irq (struct snd_rawmidi_substream*,int ,int ) ;

__attribute__((used)) static int vt1724_midi_input_close(struct snd_rawmidi_substream *s)
{
 vt1724_enable_midi_irq(s, VT1724_IRQ_MPU_RX, 0);
 return 0;
}

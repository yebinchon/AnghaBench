
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int irqmask; } ;
struct snd_mpu401 {struct sonicvibes* private_data; } ;


 int IRQMASK ;
 int SV_MIDI_MASK ;
 int SV_REG (struct sonicvibes*,int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void snd_sonicvibes_midi_input_close(struct snd_mpu401 * mpu)
{
 struct sonicvibes *sonic = mpu->private_data;
 outb(sonic->irqmask |= SV_MIDI_MASK, SV_REG(sonic, IRQMASK));
}

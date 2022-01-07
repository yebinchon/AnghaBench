
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int MPU_CTRL ;
 int VT1724_IRQ_MPU_TX ;
 int VT1724_MPU_TX_EMPTY ;
 int inb (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int vt1724_enable_midi_irq (struct snd_rawmidi_substream*,int ,int ) ;

__attribute__((used)) static void vt1724_midi_output_drain(struct snd_rawmidi_substream *s)
{
 struct snd_ice1712 *ice = s->rmidi->private_data;
 unsigned long timeout;

 vt1724_enable_midi_irq(s, VT1724_IRQ_MPU_TX, 0);

 timeout = jiffies + msecs_to_jiffies(15);
 do {
  if (inb(ICEREG1724(ice, MPU_CTRL)) & VT1724_MPU_TX_EMPTY)
   break;
  schedule_timeout_uninterruptible(1);
 } while (time_after(timeout, jiffies));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uart_cmd; int uart_overrun; int uart_framing; } ;
struct snd_gus_card {TYPE_1__ gf1; int midi_substream_input; int uart_cmd_lock; } ;


 unsigned char snd_gf1_uart_get (struct snd_gus_card*) ;
 unsigned char snd_gf1_uart_stat (struct snd_gus_card*) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_interrupt_midi_in(struct snd_gus_card * gus)
{
 int count;
 unsigned char stat, data, byte;
 unsigned long flags;

 count = 10;
 while (count) {
  spin_lock_irqsave(&gus->uart_cmd_lock, flags);
  stat = snd_gf1_uart_stat(gus);
  if (!(stat & 0x01)) {
   spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
   count--;
   continue;
  }
  count = 100;
  data = snd_gf1_uart_get(gus);
  if (!(gus->gf1.uart_cmd & 0x80)) {
   spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
   continue;
  }
  if (stat & 0x10) {
   gus->gf1.uart_framing++;
   spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
   continue;
  }
  byte = snd_gf1_uart_get(gus);
  spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
  snd_rawmidi_receive(gus->midi_substream_input, &byte, 1);
  if (stat & 0x20) {
   gus->gf1.uart_overrun++;
  }
 }
}

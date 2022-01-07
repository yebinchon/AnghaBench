
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_4__ {int uart_cmd; } ;
struct snd_gus_card {int uart_cmd_lock; TYPE_2__ gf1; } ;
struct TYPE_3__ {struct snd_gus_card* private_data; } ;


 int snd_gf1_uart_cmd (struct snd_gus_card*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_uart_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_gus_card *gus;
 unsigned long flags;

 gus = substream->rmidi->private_data;

 spin_lock_irqsave(&gus->uart_cmd_lock, flags);
 if (up) {
  if ((gus->gf1.uart_cmd & 0x80) == 0)
   snd_gf1_uart_cmd(gus, gus->gf1.uart_cmd | 0x80);
 } else {
  if (gus->gf1.uart_cmd & 0x80)
   snd_gf1_uart_cmd(gus, gus->gf1.uart_cmd & ~0x80);
 }
 spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
}

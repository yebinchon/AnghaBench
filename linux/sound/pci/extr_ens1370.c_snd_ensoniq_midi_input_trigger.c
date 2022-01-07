
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct ensoniq {int uartc; int reg_lock; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;


 int ES_REG (struct ensoniq*,int ) ;
 int ES_RXINTEN ;
 int UART_CONTROL ;
 int UART_DATA ;
 int inb (int ) ;
 int outb (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ensoniq_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct ensoniq *ensoniq = substream->rmidi->private_data;
 int idx;

 spin_lock_irqsave(&ensoniq->reg_lock, flags);
 if (up) {
  if ((ensoniq->uartc & ES_RXINTEN) == 0) {

   for (idx = 0; idx < 32; idx++)
    inb(ES_REG(ensoniq, UART_DATA));
   ensoniq->uartc |= ES_RXINTEN;
   outb(ensoniq->uartc, ES_REG(ensoniq, UART_CONTROL));
  }
 } else {
  if (ensoniq->uartc & ES_RXINTEN) {
   ensoniq->uartc &= ~ES_RXINTEN;
   outb(ensoniq->uartc, ES_REG(ensoniq, UART_CONTROL));
  }
 }
 spin_unlock_irqrestore(&ensoniq->reg_lock, flags);
}

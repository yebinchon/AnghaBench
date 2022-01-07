
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct ensoniq {unsigned char uartc; int reg_lock; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;


 int ES_REG (struct ensoniq*,int ) ;
 int ES_TXINTENI (unsigned char) ;
 unsigned char ES_TXINTENM ;
 unsigned char ES_TXINTENO (int) ;
 int ES_TXRDY ;
 int UART_CONTROL ;
 int UART_DATA ;
 int UART_STATUS ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ensoniq_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct ensoniq *ensoniq = substream->rmidi->private_data;
 unsigned char byte;

 spin_lock_irqsave(&ensoniq->reg_lock, flags);
 if (up) {
  if (ES_TXINTENI(ensoniq->uartc) == 0) {
   ensoniq->uartc |= ES_TXINTENO(1);

   while (ES_TXINTENI(ensoniq->uartc) == 1 &&
          (inb(ES_REG(ensoniq, UART_STATUS)) & ES_TXRDY)) {
    if (snd_rawmidi_transmit(substream, &byte, 1) != 1) {
     ensoniq->uartc &= ~ES_TXINTENM;
    } else {
     outb(byte, ES_REG(ensoniq, UART_DATA));
    }
   }
   outb(ensoniq->uartc, ES_REG(ensoniq, UART_CONTROL));
  }
 } else {
  if (ES_TXINTENI(ensoniq->uartc) == 1) {
   ensoniq->uartc &= ~ES_TXINTENM;
   outb(ensoniq->uartc, ES_REG(ensoniq, UART_CONTROL));
  }
 }
 spin_unlock_irqrestore(&ensoniq->reg_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int dummy; } ;
struct ensoniq {int uartm; unsigned char uartc; int reg_lock; int midi_output; int midi_input; struct snd_rawmidi* rmidi; } ;


 int ES_MODE_INPUT ;
 int ES_MODE_OUTPUT ;
 int ES_REG (struct ensoniq*,int ) ;
 unsigned char ES_RXRDY ;
 unsigned char ES_TXINTENM ;
 unsigned char ES_TXRDY ;
 int UART_CONTROL ;
 int UART_DATA ;
 int UART_STATUS ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 int snd_rawmidi_transmit (int ,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_ensoniq_midi_interrupt(struct ensoniq * ensoniq)
{
 struct snd_rawmidi *rmidi = ensoniq->rmidi;
 unsigned char status, mask, byte;

 if (rmidi == ((void*)0))
  return;

 spin_lock(&ensoniq->reg_lock);
 mask = ensoniq->uartm & ES_MODE_INPUT ? ES_RXRDY : 0;
 while (mask) {
  status = inb(ES_REG(ensoniq, UART_STATUS));
  if ((status & mask) == 0)
   break;
  byte = inb(ES_REG(ensoniq, UART_DATA));
  snd_rawmidi_receive(ensoniq->midi_input, &byte, 1);
 }
 spin_unlock(&ensoniq->reg_lock);


 spin_lock(&ensoniq->reg_lock);
 mask = ensoniq->uartm & ES_MODE_OUTPUT ? ES_TXRDY : 0;
 while (mask) {
  status = inb(ES_REG(ensoniq, UART_STATUS));
  if ((status & mask) == 0)
   break;
  if (snd_rawmidi_transmit(ensoniq->midi_output, &byte, 1) != 1) {
   ensoniq->uartc &= ~ES_TXINTENM;
   outb(ensoniq->uartc, ES_REG(ensoniq, UART_CONTROL));
   mask &= ~ES_TXRDY;
  } else {
   outb(byte, ES_REG(ensoniq, UART_DATA));
  }
 }
 spin_unlock(&ensoniq->reg_lock);
}

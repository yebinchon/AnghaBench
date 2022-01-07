
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct ensoniq {int uartm; int uartc; int reg_lock; int * midi_input; int ctrl; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;


 int CONTROL ;
 int ES_MODE_INPUT ;
 int ES_MODE_OUTPUT ;
 int ES_REG (struct ensoniq*,int ) ;
 int ES_RXINTEN ;
 int ES_UART_EN ;
 int UART_CONTROL ;
 int outb (int,int ) ;
 int outl (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_midi_input_close(struct snd_rawmidi_substream *substream)
{
 struct ensoniq *ensoniq = substream->rmidi->private_data;

 spin_lock_irq(&ensoniq->reg_lock);
 if (!(ensoniq->uartm & ES_MODE_OUTPUT)) {
  outb(ensoniq->uartc = 0, ES_REG(ensoniq, UART_CONTROL));
  outl(ensoniq->ctrl &= ~ES_UART_EN, ES_REG(ensoniq, CONTROL));
 } else {
  outb(ensoniq->uartc &= ~ES_RXINTEN, ES_REG(ensoniq, UART_CONTROL));
 }
 ensoniq->midi_input = ((void*)0);
 ensoniq->uartm &= ~ES_MODE_INPUT;
 spin_unlock_irq(&ensoniq->reg_lock);
 return 0;
}

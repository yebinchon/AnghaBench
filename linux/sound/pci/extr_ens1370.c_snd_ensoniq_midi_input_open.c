
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct ensoniq {int uartm; int reg_lock; int ctrl; scalar_t__ uartc; struct snd_rawmidi_substream* midi_input; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;


 int CONTROL ;
 scalar_t__ ES_CNTRL (int) ;
 int ES_MODE_INPUT ;
 int ES_MODE_OUTPUT ;
 int ES_REG (struct ensoniq*,int ) ;
 int ES_UART_EN ;
 int UART_CONTROL ;
 int outb (scalar_t__,int ) ;
 int outl (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_midi_input_open(struct snd_rawmidi_substream *substream)
{
 struct ensoniq *ensoniq = substream->rmidi->private_data;

 spin_lock_irq(&ensoniq->reg_lock);
 ensoniq->uartm |= ES_MODE_INPUT;
 ensoniq->midi_input = substream;
 if (!(ensoniq->uartm & ES_MODE_OUTPUT)) {
  outb(ES_CNTRL(3), ES_REG(ensoniq, UART_CONTROL));
  outb(ensoniq->uartc = 0, ES_REG(ensoniq, UART_CONTROL));
  outl(ensoniq->ctrl |= ES_UART_EN, ES_REG(ensoniq, CONTROL));
 }
 spin_unlock_irq(&ensoniq->reg_lock);
 return 0;
}

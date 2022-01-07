
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_uart16550 {scalar_t__ filemode; int open_lock; struct snd_rawmidi_substream** midi_input; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;


 scalar_t__ SERIAL_MODE_INPUT_OPEN ;
 scalar_t__ SERIAL_MODE_NOT_OPENED ;
 int snd_uart16550_do_open (struct snd_uart16550*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_uart16550_input_open(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_uart16550 *uart = substream->rmidi->private_data;

 spin_lock_irqsave(&uart->open_lock, flags);
 if (uart->filemode == SERIAL_MODE_NOT_OPENED)
  snd_uart16550_do_open(uart);
 uart->filemode |= SERIAL_MODE_INPUT_OPEN;
 uart->midi_input[substream->number] = substream;
 spin_unlock_irqrestore(&uart->open_lock, flags);
 return 0;
}

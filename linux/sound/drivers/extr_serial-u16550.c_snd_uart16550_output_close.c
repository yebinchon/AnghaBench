
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_uart16550 {scalar_t__ filemode; int open_lock; int ** midi_output; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;


 scalar_t__ SERIAL_MODE_NOT_OPENED ;
 scalar_t__ SERIAL_MODE_OUTPUT_OPEN ;
 int snd_uart16550_do_close (struct snd_uart16550*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_uart16550_output_close(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_uart16550 *uart = substream->rmidi->private_data;

 spin_lock_irqsave(&uart->open_lock, flags);
 uart->filemode &= ~SERIAL_MODE_OUTPUT_OPEN;
 uart->midi_output[substream->number] = ((void*)0);
 if (uart->filemode == SERIAL_MODE_NOT_OPENED)
  snd_uart16550_do_close(uart);
 spin_unlock_irqrestore(&uart->open_lock, flags);
 return 0;
}

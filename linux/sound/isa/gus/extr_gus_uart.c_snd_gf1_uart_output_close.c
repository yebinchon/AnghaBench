
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_4__ {scalar_t__ interrupt_handler_midi_in; } ;
struct snd_gus_card {int uart_cmd_lock; int * midi_substream_output; TYPE_2__ gf1; } ;
struct TYPE_3__ {struct snd_gus_card* private_data; } ;


 int SNDRV_GF1_HANDLER_MIDI_OUT ;
 scalar_t__ snd_gf1_interrupt_midi_in ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,int ) ;
 int snd_gf1_uart_reset (struct snd_gus_card*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gf1_uart_output_close(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_gus_card *gus;

 gus = substream->rmidi->private_data;
 spin_lock_irqsave(&gus->uart_cmd_lock, flags);
 if (gus->gf1.interrupt_handler_midi_in != snd_gf1_interrupt_midi_in)
  snd_gf1_uart_reset(gus, 1);
 snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_MIDI_OUT);
 gus->midi_substream_output = ((void*)0);
 spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
 return 0;
}

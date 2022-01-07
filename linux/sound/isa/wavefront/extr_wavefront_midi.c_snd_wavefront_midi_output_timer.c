
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int virtual; int timer; int * timer_card; } ;
typedef TYPE_1__ snd_wavefront_midi_t ;
typedef int snd_wavefront_card_t ;


 TYPE_1__* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 TYPE_1__* midi ;
 int mod_timer (int *,scalar_t__) ;
 int snd_wavefront_midi_output_write (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void snd_wavefront_midi_output_timer(struct timer_list *t)
{
 snd_wavefront_midi_t *midi = from_timer(midi, t, timer);
 snd_wavefront_card_t *card = midi->timer_card;
 unsigned long flags;

 spin_lock_irqsave (&midi->virtual, flags);
 mod_timer(&midi->timer, 1 + jiffies);
 spin_unlock_irqrestore (&midi->virtual, flags);
 snd_wavefront_midi_output_write(card);
}

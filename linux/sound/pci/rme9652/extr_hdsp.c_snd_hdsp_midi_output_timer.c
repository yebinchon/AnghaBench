
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hdsp_midi {int lock; int timer; scalar_t__ istimer; } ;


 struct hdsp_midi* from_timer (int ,struct timer_list*,int ) ;
 struct hdsp_midi* hmidi ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_hdsp_midi_output_write (struct hdsp_midi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void snd_hdsp_midi_output_timer(struct timer_list *t)
{
 struct hdsp_midi *hmidi = from_timer(hmidi, t, timer);
 unsigned long flags;

 snd_hdsp_midi_output_write(hmidi);
 spin_lock_irqsave (&hmidi->lock, flags);







 if (hmidi->istimer)
  mod_timer(&hmidi->timer, 1 + jiffies);

 spin_unlock_irqrestore (&hmidi->lock, flags);
}

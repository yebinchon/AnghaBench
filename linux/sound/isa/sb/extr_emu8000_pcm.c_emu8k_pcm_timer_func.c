
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_emu8k_pcm {int last_ptr; int buf_size; int period_pos; int period_size; int timer_lock; int substream; int timer; } ;


 int emu8k_get_curpos (struct snd_emu8k_pcm*,int ) ;
 struct snd_emu8k_pcm* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct snd_emu8k_pcm* rec ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer ;

__attribute__((used)) static void emu8k_pcm_timer_func(struct timer_list *t)
{
 struct snd_emu8k_pcm *rec = from_timer(rec, t, timer);
 int ptr, delta;

 spin_lock(&rec->timer_lock);

 ptr = emu8k_get_curpos(rec, 0);
 if (ptr < rec->last_ptr)
  delta = ptr + rec->buf_size - rec->last_ptr;
 else
  delta = ptr - rec->last_ptr;
 rec->period_pos += delta;
 rec->last_ptr = ptr;


 mod_timer(&rec->timer, jiffies + 1);


 if (rec->period_pos >= (int)rec->period_size) {
  rec->period_pos %= rec->period_size;
  spin_unlock(&rec->timer_lock);
  snd_pcm_period_elapsed(rec->substream);
  return;
 }
 spin_unlock(&rec->timer_lock);
}

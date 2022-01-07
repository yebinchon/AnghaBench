
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_opl3_voice {scalar_t__ state; scalar_t__ note_off; int chan; int note; scalar_t__ note_off_check; } ;
struct snd_opl3 {int max_voices; int sys_timer_lock; scalar_t__ sys_timer_status; int tlist; int voice_lock; struct snd_opl3_voice* voices; } ;


 struct snd_opl3* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct snd_opl3* opl3 ;
 int snd_opl3_note_off_unsafe (struct snd_opl3*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tlist ;

void snd_opl3_timer_func(struct timer_list *t)
{

 struct snd_opl3 *opl3 = from_timer(opl3, t, tlist);
 unsigned long flags;
 int again = 0;
 int i;

 spin_lock_irqsave(&opl3->voice_lock, flags);
 for (i = 0; i < opl3->max_voices; i++) {
  struct snd_opl3_voice *vp = &opl3->voices[i];
  if (vp->state > 0 && vp->note_off_check) {
   if (vp->note_off == jiffies)
    snd_opl3_note_off_unsafe(opl3, vp->note, 0,
        vp->chan);
   else
    again++;
  }
 }
 spin_unlock_irqrestore(&opl3->voice_lock, flags);

 spin_lock_irqsave(&opl3->sys_timer_lock, flags);
 if (again)
  mod_timer(&opl3->tlist, jiffies + 1);
 else
  opl3->sys_timer_status = 0;
 spin_unlock_irqrestore(&opl3->sys_timer_lock, flags);
}

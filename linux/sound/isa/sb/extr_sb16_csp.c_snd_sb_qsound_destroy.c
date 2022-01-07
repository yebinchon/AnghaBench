
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb_csp {int q_lock; scalar_t__ qpos_changed; int qsound_space; int qsound_switch; TYPE_1__* chip; } ;
struct snd_card {int controls_rwsem; } ;
struct TYPE_2__ {struct snd_card* card; } ;


 int down_write (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_remove (struct snd_card*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up_write (int *) ;

__attribute__((used)) static void snd_sb_qsound_destroy(struct snd_sb_csp * p)
{
 struct snd_card *card;
 unsigned long flags;

 if (snd_BUG_ON(!p))
  return;

 card = p->chip->card;

 down_write(&card->controls_rwsem);
 if (p->qsound_switch)
  snd_ctl_remove(card, p->qsound_switch);
 if (p->qsound_space)
  snd_ctl_remove(card, p->qsound_space);
 up_write(&card->controls_rwsem);


 spin_lock_irqsave (&p->q_lock, flags);
 p->qpos_changed = 0;
 spin_unlock_irqrestore (&p->q_lock, flags);
}

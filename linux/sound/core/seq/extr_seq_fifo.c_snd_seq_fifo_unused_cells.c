
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {int use_lock; int lock; int pool; } ;


 int snd_seq_unused_cells (int ) ;
 int snd_use_lock_free (int *) ;
 int snd_use_lock_use (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_fifo_unused_cells(struct snd_seq_fifo *f)
{
 unsigned long flags;
 int cells;

 if (!f)
  return 0;

 snd_use_lock_use(&f->use_lock);
 spin_lock_irqsave(&f->lock, flags);
 cells = snd_seq_unused_cells(f->pool);
 spin_unlock_irqrestore(&f->lock, flags);
 snd_use_lock_free(&f->use_lock);
 return cells;
}

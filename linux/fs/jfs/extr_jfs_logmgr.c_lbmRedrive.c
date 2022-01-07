
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {struct lbuf* l_redrive_next; } ;


 int jfsIOthread ;
 struct lbuf* log_redrive_list ;
 int log_redrive_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void lbmRedrive(struct lbuf *bp)
{
 unsigned long flags;

 spin_lock_irqsave(&log_redrive_lock, flags);
 bp->l_redrive_next = log_redrive_list;
 log_redrive_list = bp;
 spin_unlock_irqrestore(&log_redrive_lock, flags);

 wake_up_process(jfsIOthread);
}

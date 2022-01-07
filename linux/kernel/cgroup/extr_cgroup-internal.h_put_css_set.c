
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_set {int refcount; } ;


 int css_set_lock ;
 int put_css_set_locked (struct css_set*) ;
 scalar_t__ refcount_dec_not_one (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void put_css_set(struct css_set *cset)
{
 unsigned long flags;






 if (refcount_dec_not_one(&cset->refcount))
  return;

 spin_lock_irqsave(&css_set_lock, flags);
 put_css_set_locked(cset);
 spin_unlock_irqrestore(&css_set_lock, flags);
}

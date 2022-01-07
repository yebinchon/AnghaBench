
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int hwdep_wait; int lock; int msg; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_unknown_message(struct snd_dg00x *dg00x,
       unsigned long long offset, __be32 *buf)
{
 unsigned long flags;

 spin_lock_irqsave(&dg00x->lock, flags);
 dg00x->msg = be32_to_cpu(*buf);
 spin_unlock_irqrestore(&dg00x->lock, flags);

 wake_up(&dg00x->hwdep_wait);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_SPINLOCK ;


 int net_rand_state ;
 int prandom_seed_full_state (int *) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __prandom_reseed(bool late)
{
 unsigned long flags;
 static bool latch = 0;
 static DEFINE_SPINLOCK(lock);
 if (!spin_trylock_irqsave(&lock, flags))
  return;

 if (latch && !late)
  goto out;

 latch = 1;
 prandom_seed_full_state(&net_rand_state);
out:
 spin_unlock_irqrestore(&lock, flags);
}

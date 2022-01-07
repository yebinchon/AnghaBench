
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct k_itimer {TYPE_1__* sigq; } ;
struct TYPE_2__ {int info; } ;


 int GFP_KERNEL ;
 int clear_siginfo (int *) ;
 int kmem_cache_free (int ,struct k_itimer*) ;
 struct k_itimer* kmem_cache_zalloc (int ,int ) ;
 int posix_timers_cache ;
 TYPE_1__* sigqueue_alloc () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct k_itimer * alloc_posix_timer(void)
{
 struct k_itimer *tmr;
 tmr = kmem_cache_zalloc(posix_timers_cache, GFP_KERNEL);
 if (!tmr)
  return tmr;
 if (unlikely(!(tmr->sigq = sigqueue_alloc()))) {
  kmem_cache_free(posix_timers_cache, tmr);
  return ((void*)0);
 }
 clear_siginfo(&tmr->sigq->info);
 return tmr;
}

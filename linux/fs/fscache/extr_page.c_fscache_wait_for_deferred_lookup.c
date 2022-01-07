
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int flags; } ;


 int ASSERT (int) ;
 int ERESTARTSYS ;
 int FSCACHE_COOKIE_LOOKING_UP ;
 int TASK_INTERRUPTIBLE ;
 int _enter (char*) ;
 int _leave (char*) ;
 int fscache_hist (int ,unsigned long) ;
 int fscache_n_retrievals_intr ;
 int fscache_n_retrievals_wait ;
 int fscache_retrieval_delay_histogram ;
 int fscache_stat (int *) ;
 unsigned long jiffies ;
 int smp_rmb () ;
 int test_bit (int ,int *) ;
 scalar_t__ wait_on_bit (int *,int ,int ) ;

int fscache_wait_for_deferred_lookup(struct fscache_cookie *cookie)
{
 unsigned long jif;

 _enter("");

 if (!test_bit(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags)) {
  _leave(" = 0 [imm]");
  return 0;
 }

 fscache_stat(&fscache_n_retrievals_wait);

 jif = jiffies;
 if (wait_on_bit(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP,
   TASK_INTERRUPTIBLE) != 0) {
  fscache_stat(&fscache_n_retrievals_intr);
  _leave(" = -ERESTARTSYS");
  return -ERESTARTSYS;
 }

 ASSERT(!test_bit(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags));

 smp_rmb();
 fscache_hist(fscache_retrieval_delay_histogram, jif);
 _leave(" = 0 [dly]");
 return 0;
}

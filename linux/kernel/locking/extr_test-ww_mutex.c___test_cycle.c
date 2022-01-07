
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_cycle {int a_mutex; scalar_t__ result; int work; int b_signal; int * a_signal; int * b_mutex; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int flush_workqueue (int ) ;
 int init_completion (int *) ;
 int kfree (struct test_cycle*) ;
 struct test_cycle* kmalloc_array (unsigned int,int,int ) ;
 int pr_err (char*,unsigned int,unsigned int,scalar_t__) ;
 int queue_work (int ,int *) ;
 int test_cycle_work ;
 int wq ;
 int ww_class ;
 int ww_mutex_destroy (int *) ;
 int ww_mutex_init (int *,int *) ;

__attribute__((used)) static int __test_cycle(unsigned int nthreads)
{
 struct test_cycle *cycles;
 unsigned int n, last = nthreads - 1;
 int ret;

 cycles = kmalloc_array(nthreads, sizeof(*cycles), GFP_KERNEL);
 if (!cycles)
  return -ENOMEM;

 for (n = 0; n < nthreads; n++) {
  struct test_cycle *cycle = &cycles[n];

  ww_mutex_init(&cycle->a_mutex, &ww_class);
  if (n == last)
   cycle->b_mutex = &cycles[0].a_mutex;
  else
   cycle->b_mutex = &cycles[n + 1].a_mutex;

  if (n == 0)
   cycle->a_signal = &cycles[last].b_signal;
  else
   cycle->a_signal = &cycles[n - 1].b_signal;
  init_completion(&cycle->b_signal);

  INIT_WORK(&cycle->work, test_cycle_work);
  cycle->result = 0;
 }

 for (n = 0; n < nthreads; n++)
  queue_work(wq, &cycles[n].work);

 flush_workqueue(wq);

 ret = 0;
 for (n = 0; n < nthreads; n++) {
  struct test_cycle *cycle = &cycles[n];

  if (!cycle->result)
   continue;

  pr_err("cyclic deadlock not resolved, ret[%d/%d] = %d\n",
         n, nthreads, cycle->result);
  ret = -EINVAL;
  break;
 }

 for (n = 0; n < nthreads; n++)
  ww_mutex_destroy(&cycles[n].a_mutex);
 kfree(cycles);
 return ret;
}

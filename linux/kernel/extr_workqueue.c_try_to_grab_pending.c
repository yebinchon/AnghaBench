
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int lock; int id; } ;
struct work_struct {int entry; } ;
struct pool_workqueue {struct worker_pool* pool; } ;
struct delayed_work {int timer; } ;


 int EAGAIN ;
 int ENOENT ;
 int WORK_STRUCT_DELAYED ;
 int WORK_STRUCT_PENDING_BIT ;
 int cpu_relax () ;
 int debug_work_deactivate (struct work_struct*) ;
 int del_timer (int *) ;
 int get_work_color (struct work_struct*) ;
 struct worker_pool* get_work_pool (struct work_struct*) ;
 struct pool_workqueue* get_work_pwq (struct work_struct*) ;
 scalar_t__ likely (int ) ;
 int list_del_init (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pwq_activate_delayed_work (struct work_struct*) ;
 int pwq_dec_nr_in_flight (struct pool_workqueue*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_work_pool_and_keep_pending (struct work_struct*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int*) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;
 int* work_data_bits (struct work_struct*) ;
 scalar_t__ work_is_canceling (struct work_struct*) ;

__attribute__((used)) static int try_to_grab_pending(struct work_struct *work, bool is_dwork,
          unsigned long *flags)
{
 struct worker_pool *pool;
 struct pool_workqueue *pwq;

 local_irq_save(*flags);


 if (is_dwork) {
  struct delayed_work *dwork = to_delayed_work(work);






  if (likely(del_timer(&dwork->timer)))
   return 1;
 }


 if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work)))
  return 0;

 rcu_read_lock();




 pool = get_work_pool(work);
 if (!pool)
  goto fail;

 spin_lock(&pool->lock);
 pwq = get_work_pwq(work);
 if (pwq && pwq->pool == pool) {
  debug_work_deactivate(work);
  if (*work_data_bits(work) & WORK_STRUCT_DELAYED)
   pwq_activate_delayed_work(work);

  list_del_init(&work->entry);
  pwq_dec_nr_in_flight(pwq, get_work_color(work));


  set_work_pool_and_keep_pending(work, pool->id);

  spin_unlock(&pool->lock);
  rcu_read_unlock();
  return 1;
 }
 spin_unlock(&pool->lock);
fail:
 rcu_read_unlock();
 local_irq_restore(*flags);
 if (work_is_canceling(work))
  return -ENOENT;
 cpu_relax();
 return -EAGAIN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_barrier {int work; int done; } ;
struct work_struct {int lockdep_map; int func; } ;


 scalar_t__ WARN_ON (int) ;
 int destroy_work_on_stack (int *) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 scalar_t__ start_flush_work (struct work_struct*,struct wq_barrier*,int) ;
 int wait_for_completion (int *) ;
 int wq_online ;

__attribute__((used)) static bool __flush_work(struct work_struct *work, bool from_cancel)
{
 struct wq_barrier barr;

 if (WARN_ON(!wq_online))
  return 0;

 if (WARN_ON(!work->func))
  return 0;

 if (!from_cancel) {
  lock_map_acquire(&work->lockdep_map);
  lock_map_release(&work->lockdep_map);
 }

 if (start_flush_work(work, &barr, from_cancel)) {
  wait_for_completion(&barr.done);
  destroy_work_on_stack(&barr.work);
  return 1;
 } else {
  return 0;
 }
}

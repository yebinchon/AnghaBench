
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct list_head* next; } ;
struct work_struct {TYPE_2__ entry; int lockdep_map; } ;
struct wq_barrier {struct work_struct work; int task; int done; } ;
struct TYPE_3__ {struct list_head* next; } ;
struct worker {TYPE_1__ scheduled; } ;
struct pool_workqueue {int dummy; } ;
struct list_head {int dummy; } ;


 int INIT_WORK_ONSTACK (struct work_struct*,int ) ;
 int WORK_NO_COLOR ;
 unsigned long WORK_STRUCT_LINKED ;
 int WORK_STRUCT_LINKED_BIT ;
 int WORK_STRUCT_PENDING_BIT ;
 int __set_bit (int ,unsigned long*) ;
 int current ;
 int debug_work_activate (struct work_struct*) ;
 int init_completion_map (int *,int *) ;
 int insert_work (struct pool_workqueue*,struct work_struct*,struct list_head*,unsigned int) ;
 unsigned int work_color_to_flags (int ) ;
 unsigned long* work_data_bits (struct work_struct*) ;
 int wq_barrier_func ;

__attribute__((used)) static void insert_wq_barrier(struct pool_workqueue *pwq,
         struct wq_barrier *barr,
         struct work_struct *target, struct worker *worker)
{
 struct list_head *head;
 unsigned int linked = 0;







 INIT_WORK_ONSTACK(&barr->work, wq_barrier_func);
 __set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(&barr->work));

 init_completion_map(&barr->done, &target->lockdep_map);

 barr->task = current;





 if (worker)
  head = worker->scheduled.next;
 else {
  unsigned long *bits = work_data_bits(target);

  head = target->entry.next;

  linked = *bits & WORK_STRUCT_LINKED;
  __set_bit(WORK_STRUCT_LINKED_BIT, bits);
 }

 debug_work_activate(&barr->work);
 insert_work(pwq, &barr->work, head,
      work_color_to_flags(WORK_NO_COLOR) | linked);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int EAGAIN ;
 int get_work_pool_id (struct work_struct*) ;
 int local_irq_restore (unsigned long) ;
 int set_work_pool_and_clear_pending (struct work_struct*,int ) ;
 int try_to_grab_pending (struct work_struct*,int,unsigned long*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool __cancel_work(struct work_struct *work, bool is_dwork)
{
 unsigned long flags;
 int ret;

 do {
  ret = try_to_grab_pending(work, is_dwork, &flags);
 } while (unlikely(ret == -EAGAIN));

 if (unlikely(ret < 0))
  return 0;

 set_work_pool_and_clear_pending(work, get_work_pool_id(work));
 local_irq_restore(flags);
 return ret;
}

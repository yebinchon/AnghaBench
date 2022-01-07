
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct reclaim_state* reclaim_state; } ;
struct reclaim_state {int dummy; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void set_task_reclaim_state(struct task_struct *task,
       struct reclaim_state *rs)
{

 WARN_ON_ONCE(rs && task->reclaim_state);


 WARN_ON_ONCE(!rs && !task->reclaim_state);

 task->reclaim_state = rs;
}

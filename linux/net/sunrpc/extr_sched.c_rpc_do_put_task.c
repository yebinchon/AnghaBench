
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct rpc_task {int tk_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int rpc_final_put_task (struct rpc_task*,struct workqueue_struct*) ;
 int rpc_release_resources_task (struct rpc_task*) ;

__attribute__((used)) static void rpc_do_put_task(struct rpc_task *task, struct workqueue_struct *q)
{
 if (atomic_dec_and_test(&task->tk_count)) {
  rpc_release_resources_task(task);
  rpc_final_put_task(task, q);
 }
}

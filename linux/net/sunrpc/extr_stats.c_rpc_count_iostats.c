
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; } ;
struct rpc_iostats {int dummy; } ;
struct TYPE_3__ {size_t p_statidx; } ;


 int rpc_count_iostats_metrics (struct rpc_task const*,struct rpc_iostats*) ;

void rpc_count_iostats(const struct rpc_task *task, struct rpc_iostats *stats)
{
 rpc_count_iostats_metrics(task,
      &stats[task->tk_msg.rpc_proc->p_statidx]);
}

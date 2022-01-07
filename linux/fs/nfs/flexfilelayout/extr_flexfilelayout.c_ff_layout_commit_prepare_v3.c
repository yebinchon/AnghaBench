
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int ff_layout_commit_prepare_common (struct rpc_task*,void*) ;
 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void ff_layout_commit_prepare_v3(struct rpc_task *task, void *data)
{
 ff_layout_commit_prepare_common(task, data);
 rpc_call_start(task);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int pnfs_generic_write_commit_done (struct rpc_task*,void*) ;

__attribute__((used)) static void ff_layout_commit_done(struct rpc_task *task, void *data)
{
 pnfs_generic_write_commit_done(task, data);
}

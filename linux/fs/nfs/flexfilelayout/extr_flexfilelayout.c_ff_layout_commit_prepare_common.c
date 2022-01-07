
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_commit_data {int dummy; } ;


 int ff_layout_commit_record_layoutstats_start (struct rpc_task*,struct nfs_commit_data*) ;

__attribute__((used)) static void ff_layout_commit_prepare_common(struct rpc_task *task,
  struct nfs_commit_data *cdata)
{
 ff_layout_commit_record_layoutstats_start(task, cdata);
}

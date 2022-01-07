
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_commit_data {int inode; } ;
struct TYPE_2__ {int * cl_metrics; } ;


 size_t NFSPROC4_CLNT_COMMIT ;
 TYPE_1__* NFS_CLIENT (int ) ;
 int ff_layout_commit_record_layoutstats_done (struct rpc_task*,struct nfs_commit_data*) ;
 int rpc_count_iostats_metrics (struct rpc_task*,int *) ;

__attribute__((used)) static void ff_layout_commit_count_stats(struct rpc_task *task, void *data)
{
 struct nfs_commit_data *cdata = data;

 ff_layout_commit_record_layoutstats_done(task, cdata);
 rpc_count_iostats_metrics(task,
     &NFS_CLIENT(cdata->inode)->cl_metrics[NFSPROC4_CLNT_COMMIT]);
}

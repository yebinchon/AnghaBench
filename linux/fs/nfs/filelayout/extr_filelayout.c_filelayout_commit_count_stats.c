
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_commit_data {int inode; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {int cl_metrics; } ;


 TYPE_2__* NFS_SERVER (int ) ;
 int rpc_count_iostats (struct rpc_task*,int ) ;

__attribute__((used)) static void filelayout_commit_count_stats(struct rpc_task *task, void *data)
{
 struct nfs_commit_data *cdata = data;

 rpc_count_iostats(task, NFS_SERVER(cdata->inode)->client->cl_metrics);
}

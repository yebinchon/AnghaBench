
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_renamedata {int old_dir; } ;
struct TYPE_2__ {int (* rename_rpc_prepare ) (struct rpc_task*,struct nfs_renamedata*) ;} ;


 TYPE_1__* NFS_PROTO (int ) ;
 int stub1 (struct rpc_task*,struct nfs_renamedata*) ;

__attribute__((used)) static void nfs_rename_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_renamedata *data = calldata;
 NFS_PROTO(data->old_dir)->rename_rpc_prepare(task, data);
}

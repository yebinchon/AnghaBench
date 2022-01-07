
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_unlinkdata {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int (* unlink_rpc_prepare ) (struct rpc_task*,struct nfs_unlinkdata*) ;} ;
struct TYPE_3__ {int d_parent; } ;


 TYPE_2__* NFS_PROTO (struct inode*) ;
 struct inode* d_inode (int ) ;
 int stub1 (struct rpc_task*,struct nfs_unlinkdata*) ;

__attribute__((used)) static void nfs_unlink_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_unlinkdata *data = calldata;
 struct inode *dir = d_inode(data->dentry->d_parent);
 NFS_PROTO(dir)->unlink_rpc_prepare(task, data);
}

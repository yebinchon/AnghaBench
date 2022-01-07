
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lr_ret; } ;
struct TYPE_3__ {int res; int arg; scalar_t__ roc; } ;
struct nfs4_delegreturndata {int fattr; TYPE_2__ res; TYPE_1__ lr; struct inode* inode; } ;
struct inode {int dummy; } ;


 int kfree (void*) ;
 int nfs_iput_and_deactive (struct inode*) ;
 int nfs_post_op_update_inode_force_wcc (struct inode*,int *) ;
 int pnfs_roc_release (int *,int *,int ) ;

__attribute__((used)) static void nfs4_delegreturn_release(void *calldata)
{
 struct nfs4_delegreturndata *data = calldata;
 struct inode *inode = data->inode;

 if (inode) {
  if (data->lr.roc)
   pnfs_roc_release(&data->lr.arg, &data->lr.res,
     data->res.lr_ret);
  nfs_post_op_update_inode_force_wcc(inode, &data->fattr);
  nfs_iput_and_deactive(inode);
 }
 kfree(calldata);
}

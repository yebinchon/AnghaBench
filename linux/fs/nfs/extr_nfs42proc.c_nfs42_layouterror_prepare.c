
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct pnfs_layout_hdr {int plh_stateid; } ;
struct nfs_server {int nfs_client; } ;
struct TYPE_8__ {int seq_res; } ;
struct TYPE_7__ {unsigned int num_errors; int seq_args; TYPE_2__* errors; } ;
struct nfs42_layouterror_data {TYPE_4__ res; TYPE_3__ args; TYPE_1__* lseg; struct inode* inode; } ;
struct inode {int i_lock; } ;
struct TYPE_6__ {int stateid; } ;
struct TYPE_5__ {struct pnfs_layout_hdr* pls_layout; } ;


 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int nfs4_stateid_copy (int *,int *) ;
 int pnfs_layout_is_valid (struct pnfs_layout_hdr*) ;
 int rpc_exit (struct rpc_task*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs42_layouterror_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs42_layouterror_data *data = calldata;
 struct inode *inode = data->inode;
 struct nfs_server *server = NFS_SERVER(inode);
 struct pnfs_layout_hdr *lo = data->lseg->pls_layout;
 unsigned i;

 spin_lock(&inode->i_lock);
 if (!pnfs_layout_is_valid(lo)) {
  spin_unlock(&inode->i_lock);
  rpc_exit(task, 0);
  return;
 }
 for (i = 0; i < data->args.num_errors; i++)
  nfs4_stateid_copy(&data->args.errors[i].stateid,
    &lo->plh_stateid);
 spin_unlock(&inode->i_lock);
 nfs4_setup_sequence(server->nfs_client, &data->args.seq_args,
       &data->res.seq_res, task);
}

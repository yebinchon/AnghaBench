
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_info {TYPE_1__* mds; } ;
struct nfs_commit_data {int mds_ops; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int rpcs_out; } ;


 int NFS_CLIENT (struct inode*) ;
 int NFS_PROTO (struct inode*) ;
 int atomic_inc (int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 struct nfs_commit_data* nfs_commitdata_alloc (int) ;
 int nfs_init_commit (struct nfs_commit_data*,struct list_head*,int *,struct nfs_commit_info*) ;
 int nfs_initiate_commit (int ,struct nfs_commit_data*,int ,int ,int,int ) ;

__attribute__((used)) static int
nfs_commit_list(struct inode *inode, struct list_head *head, int how,
  struct nfs_commit_info *cinfo)
{
 struct nfs_commit_data *data;


 if (list_empty(head))
  return 0;

 data = nfs_commitdata_alloc(1);


 nfs_init_commit(data, head, ((void*)0), cinfo);
 atomic_inc(&cinfo->mds->rpcs_out);
 return nfs_initiate_commit(NFS_CLIENT(inode), data, NFS_PROTO(inode),
       data->mds_ops, how, 0);
}

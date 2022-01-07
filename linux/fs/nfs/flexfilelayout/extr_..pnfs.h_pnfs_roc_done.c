
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs4_layoutreturn_res {int dummy; } ;
struct nfs4_layoutreturn_args {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int
pnfs_roc_done(struct rpc_task *task, struct inode *inode,
  struct nfs4_layoutreturn_args **argpp,
  struct nfs4_layoutreturn_res **respp,
  int *ret)
{
 return 0;
}

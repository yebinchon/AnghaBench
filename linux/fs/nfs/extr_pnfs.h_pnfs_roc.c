
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_layoutreturn_res {int dummy; } ;
struct nfs4_layoutreturn_args {int dummy; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;



__attribute__((used)) static inline bool
pnfs_roc(struct inode *ino,
  struct nfs4_layoutreturn_args *args,
  struct nfs4_layoutreturn_res *res,
  const struct cred *cred)
{
 return 0;
}

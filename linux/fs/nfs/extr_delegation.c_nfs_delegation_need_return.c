
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int lock; struct inode* inode; int flags; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int open_files; } ;


 int NFS_DELEGATION_RETURN ;
 int NFS_DELEGATION_RETURNING ;
 int NFS_DELEGATION_RETURN_IF_CLOSED ;
 TYPE_1__* NFS_I (struct inode*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nfs_delegation_need_return(struct nfs_delegation *delegation)
{
 bool ret = 0;

 if (test_bit(NFS_DELEGATION_RETURNING, &delegation->flags))
  goto out;
 if (test_and_clear_bit(NFS_DELEGATION_RETURN, &delegation->flags))
  ret = 1;
 if (test_and_clear_bit(NFS_DELEGATION_RETURN_IF_CLOSED, &delegation->flags) && !ret) {
  struct inode *inode;

  spin_lock(&delegation->lock);
  inode = delegation->inode;
  if (inode && list_empty(&NFS_I(inode)->open_files))
   ret = 1;
  spin_unlock(&delegation->lock);
 }
out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; int i_lock; } ;
struct TYPE_2__ {int cache_validity; int attr_gencount; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_CHANGE ;
 int NFS_INO_INVALID_CTIME ;
 int NFS_INO_INVALID_OTHER ;
 int NFS_INO_REVAL_FORCED ;
 int drop_nlink (struct inode*) ;
 int nfs_inc_attr_generation_counter () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_drop_nlink(struct inode *inode)
{
 spin_lock(&inode->i_lock);

 if (inode->i_nlink > 0)
  drop_nlink(inode);
 NFS_I(inode)->attr_gencount = nfs_inc_attr_generation_counter();
 NFS_I(inode)->cache_validity |= NFS_INO_INVALID_CHANGE
  | NFS_INO_INVALID_CTIME
  | NFS_INO_INVALID_OTHER
  | NFS_INO_REVAL_FORCED;
 spin_unlock(&inode->i_lock);
}

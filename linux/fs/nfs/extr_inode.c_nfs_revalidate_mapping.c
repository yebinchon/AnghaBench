
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {unsigned long flags; int cache_validity; } ;
struct inode {int i_lock; } ;
struct address_space {int dummy; } ;


 scalar_t__ IS_SWAPFILE (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_DATA_INVAL_DEFER ;
 int NFS_INO_INVALIDATING ;
 int NFS_INO_INVALID_DATA ;
 int NFS_SERVER (struct inode*) ;
 int TASK_KILLABLE ;
 int __nfs_revalidate_inode (int ,struct inode*) ;
 int clear_bit_unlock (int ,unsigned long*) ;
 int nfs_invalidate_mapping (struct inode*,struct address_space*) ;
 scalar_t__ nfs_mapping_need_revalidate_inode (struct inode*) ;
 int nfs_wait_bit_killable ;
 int set_bit (int ,unsigned long*) ;
 int smp_mb__after_atomic () ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int trace_nfs_invalidate_mapping_enter (struct inode*) ;
 int trace_nfs_invalidate_mapping_exit (struct inode*,int) ;
 int wait_on_bit_action (unsigned long*,int ,int ,int ) ;
 int wake_up_bit (unsigned long*,int ) ;

int nfs_revalidate_mapping(struct inode *inode,
  struct address_space *mapping)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 unsigned long *bitlock = &nfsi->flags;
 int ret = 0;


 if (IS_SWAPFILE(inode))
  goto out;

 if (nfs_mapping_need_revalidate_inode(inode)) {
  ret = __nfs_revalidate_inode(NFS_SERVER(inode), inode);
  if (ret < 0)
   goto out;
 }
 for (;;) {
  ret = wait_on_bit_action(bitlock, NFS_INO_INVALIDATING,
      nfs_wait_bit_killable, TASK_KILLABLE);
  if (ret)
   goto out;
  spin_lock(&inode->i_lock);
  if (test_bit(NFS_INO_INVALIDATING, bitlock)) {
   spin_unlock(&inode->i_lock);
   continue;
  }
  if (nfsi->cache_validity & NFS_INO_INVALID_DATA)
   break;
  spin_unlock(&inode->i_lock);
  goto out;
 }

 set_bit(NFS_INO_INVALIDATING, bitlock);
 smp_wmb();
 nfsi->cache_validity &= ~(NFS_INO_INVALID_DATA|
   NFS_INO_DATA_INVAL_DEFER);
 spin_unlock(&inode->i_lock);
 trace_nfs_invalidate_mapping_enter(inode);
 ret = nfs_invalidate_mapping(inode, mapping);
 trace_nfs_invalidate_mapping_exit(inode, ret);

 clear_bit_unlock(NFS_INO_INVALIDATING, bitlock);
 smp_mb__after_atomic();
 wake_up_bit(bitlock, NFS_INO_INVALIDATING);
out:
 return ret;
}

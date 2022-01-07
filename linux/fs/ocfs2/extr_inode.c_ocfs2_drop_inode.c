
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; } ;
struct inode {int i_state; int i_lock; int i_nlink; } ;


 int I_NEW ;
 int I_WILL_FREE ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int WARN_ON (int) ;
 int assert_spin_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_drop_inode (unsigned long long,int ,int ) ;
 int write_inode_now (struct inode*,int) ;

int ocfs2_drop_inode(struct inode *inode)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 trace_ocfs2_drop_inode((unsigned long long)oi->ip_blkno,
    inode->i_nlink, oi->ip_flags);

 assert_spin_locked(&inode->i_lock);
 inode->i_state |= I_WILL_FREE;
 spin_unlock(&inode->i_lock);
 write_inode_now(inode, 1);
 spin_lock(&inode->i_lock);
 WARN_ON(inode->i_state & I_NEW);
 inode->i_state &= ~I_WILL_FREE;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {scalar_t__ l_priv; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int ocfs2_is_inode_lock (struct ocfs2_lock_res*) ;

__attribute__((used)) static inline struct inode *ocfs2_lock_res_inode(struct ocfs2_lock_res *lockres)
{
 BUG_ON(!ocfs2_is_inode_lock(lockres));

 return (struct inode *) lockres->l_priv;
}

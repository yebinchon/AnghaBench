
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_sb; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 struct inode* ocfs2_lock_res_inode (struct ocfs2_lock_res*) ;

__attribute__((used)) static struct ocfs2_super *ocfs2_get_inode_osb(struct ocfs2_lock_res *lockres)
{
 struct inode *inode = ocfs2_lock_res_inode(lockres);

 return OCFS2_SB(inode->i_sb);
}

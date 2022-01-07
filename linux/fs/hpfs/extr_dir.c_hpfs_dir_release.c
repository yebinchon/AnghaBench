
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int f_pos; } ;


 int hpfs_del_pos (struct inode*,int *) ;
 int hpfs_lock (int ) ;
 int hpfs_unlock (int ) ;

__attribute__((used)) static int hpfs_dir_release(struct inode *inode, struct file *filp)
{
 hpfs_lock(inode->i_sb);
 hpfs_del_pos(inode, &filp->f_pos);

 hpfs_unlock(inode->i_sb);
 return 0;
}

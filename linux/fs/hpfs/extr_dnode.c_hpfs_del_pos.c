
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hpfs_inode_info {int ** i_rddir_off; } ;
typedef int loff_t ;


 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int kfree (int **) ;

void hpfs_del_pos(struct inode *inode, loff_t *pos)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 loff_t **i, **j;

 if (!hpfs_inode->i_rddir_off) goto not_f;
 for (i = hpfs_inode->i_rddir_off; *i; i++) if (*i == pos) goto fnd;
 goto not_f;
 fnd:
 for (j = i + 1; *j; j++) ;
 *i = *(j - 1);
 *(j - 1) = ((void*)0);
 if (j - 1 == hpfs_inode->i_rddir_off) {
  kfree(hpfs_inode->i_rddir_off);
  hpfs_inode->i_rddir_off = ((void*)0);
 }
 return;
 not_f:


 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
typedef int dev_t ;


 struct inode* new_inode (struct super_block*) ;
 int ovl_fill_inode (struct inode*,int ,int ,int ,int ) ;

struct inode *ovl_new_inode(struct super_block *sb, umode_t mode, dev_t rdev)
{
 struct inode *inode;

 inode = new_inode(sb);
 if (inode)
  ovl_fill_inode(inode, mode, rdev, 0, 0);

 return inode;
}

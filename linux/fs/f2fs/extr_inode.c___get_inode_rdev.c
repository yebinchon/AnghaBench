
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; int i_mode; } ;
struct f2fs_inode {scalar_t__* i_addr; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int get_extra_isize (struct inode*) ;
 int le32_to_cpu (scalar_t__) ;
 int new_decode_dev (int ) ;
 int old_decode_dev (int ) ;

__attribute__((used)) static void __get_inode_rdev(struct inode *inode, struct f2fs_inode *ri)
{
 int extra_size = get_extra_isize(inode);

 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
   S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
  if (ri->i_addr[extra_size])
   inode->i_rdev = old_decode_dev(
    le32_to_cpu(ri->i_addr[extra_size]));
  else
   inode->i_rdev = new_decode_dev(
    le32_to_cpu(ri->i_addr[extra_size + 1]));
 }
}

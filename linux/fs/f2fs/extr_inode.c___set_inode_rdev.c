
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; int i_mode; } ;
struct f2fs_inode {void** i_addr; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 void* cpu_to_le32 (int ) ;
 int get_extra_isize (struct inode*) ;
 int new_encode_dev (int ) ;
 int old_encode_dev (int ) ;
 scalar_t__ old_valid_dev (int ) ;

__attribute__((used)) static void __set_inode_rdev(struct inode *inode, struct f2fs_inode *ri)
{
 int extra_size = get_extra_isize(inode);

 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {
  if (old_valid_dev(inode->i_rdev)) {
   ri->i_addr[extra_size] =
    cpu_to_le32(old_encode_dev(inode->i_rdev));
   ri->i_addr[extra_size + 1] = 0;
  } else {
   ri->i_addr[extra_size] = 0;
   ri->i_addr[extra_size + 1] =
    cpu_to_le32(new_encode_dev(inode->i_rdev));
   ri->i_addr[extra_size + 2] = 0;
  }
 }
}

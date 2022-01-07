
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_io_info {int dummy; } ;


 int check_inplace_update_policy (struct inode*,struct f2fs_io_info*) ;
 scalar_t__ f2fs_is_pinned_file (struct inode*) ;
 scalar_t__ file_is_cold (struct inode*) ;

bool f2fs_should_update_inplace(struct inode *inode, struct f2fs_io_info *fio)
{
 if (f2fs_is_pinned_file(inode))
  return 1;


 if (file_is_cold(inode))
  return 1;

 return check_inplace_update_policy(inode, fio);
}

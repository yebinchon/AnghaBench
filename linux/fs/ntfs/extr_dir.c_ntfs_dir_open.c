
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EFBIG ;
 scalar_t__ MAX_LFS_FILESIZE ;
 scalar_t__ i_size_read (struct inode*) ;

__attribute__((used)) static int ntfs_dir_open(struct inode *vi, struct file *filp)
{
 if (sizeof(unsigned long) < 8) {
  if (i_size_read(vi) > MAX_LFS_FILESIZE)
   return -EFBIG;
 }
 return 0;
}

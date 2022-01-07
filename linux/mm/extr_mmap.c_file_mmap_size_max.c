
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_mode; } ;
struct file {int f_mode; } ;


 int FMODE_UNSIGNED_OFFSET ;
 int MAX_LFS_FILESIZE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int ULONG_MAX ;

__attribute__((used)) static inline u64 file_mmap_size_max(struct file *file, struct inode *inode)
{
 if (S_ISREG(inode->i_mode))
  return MAX_LFS_FILESIZE;

 if (S_ISBLK(inode->i_mode))
  return MAX_LFS_FILESIZE;

 if (S_ISSOCK(inode->i_mode))
  return MAX_LFS_FILESIZE;


 if (file->f_mode & FMODE_UNSIGNED_OFFSET)
  return 0;


 return ULONG_MAX;
}

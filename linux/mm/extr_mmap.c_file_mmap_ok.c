
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int PAGE_SHIFT ;
 unsigned long file_mmap_size_max (struct file*,struct inode*) ;

__attribute__((used)) static inline bool file_mmap_ok(struct file *file, struct inode *inode,
    unsigned long pgoff, unsigned long len)
{
 u64 maxsize = file_mmap_size_max(file, inode);

 if (maxsize && len > maxsize)
  return 0;
 maxsize -= len;
 if (pgoff > maxsize >> PAGE_SHIFT)
  return 0;
 return 1;
}

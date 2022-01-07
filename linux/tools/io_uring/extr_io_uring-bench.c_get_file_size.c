
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long long st_size; int st_mode; } ;
struct file {unsigned long long max_blocks; int real_fd; } ;


 int BLKGETSIZE64 ;
 unsigned long long BS ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ ioctl (int ,int ,unsigned long long*) ;

__attribute__((used)) static int get_file_size(struct file *f)
{
 struct stat st;

 if (fstat(f->real_fd, &st) < 0)
  return -1;
 if (S_ISBLK(st.st_mode)) {
  unsigned long long bytes;

  if (ioctl(f->real_fd, BLKGETSIZE64, &bytes) != 0)
   return -1;

  f->max_blocks = bytes / BS;
  return 0;
 } else if (S_ISREG(st.st_mode)) {
  f->max_blocks = st.st_size / BS;
  return 0;
 }

 return -1;
}

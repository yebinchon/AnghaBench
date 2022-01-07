
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long long st_size; int st_mode; } ;
typedef unsigned long long off_t ;


 int BLKGETSIZE64 ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,unsigned long long*) ;

__attribute__((used)) static int get_file_size(int fd, off_t *size)
{
 struct stat st;

 if (fstat(fd, &st) < 0)
  return -1;
 if (S_ISREG(st.st_mode)) {
  *size = st.st_size;
  return 0;
 } else if (S_ISBLK(st.st_mode)) {
  unsigned long long bytes;

  if (ioctl(fd, BLKGETSIZE64, &bytes) != 0)
   return -1;

  *size = bytes;
  return 0;
 }

 return -1;
}

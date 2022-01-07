
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int abort () ;
 scalar_t__ hugetlbfs_test ;
 char* malloc (int) ;
 int mfd_assert_size (int,int) ;
 int mfd_def_size ;
 int printf (char*,...) ;
 int pwrite (int,char*,int,int ) ;

__attribute__((used)) static void mfd_assert_grow_write(int fd)
{
 static char *buf;
 ssize_t l;


 if (hugetlbfs_test)
  return;

 buf = malloc(mfd_def_size * 8);
 if (!buf) {
  printf("malloc(%zu) failed: %m\n", mfd_def_size * 8);
  abort();
 }

 l = pwrite(fd, buf, mfd_def_size * 8, 0);
 if (l != (mfd_def_size * 8)) {
  printf("pwrite() failed: %m\n");
  abort();
 }

 mfd_assert_size(fd, mfd_def_size * 8);
}

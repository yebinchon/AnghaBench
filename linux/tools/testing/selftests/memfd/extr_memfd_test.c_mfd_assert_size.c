
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int abort () ;
 int fstat (int,struct stat*) ;
 int printf (char*,long long,...) ;

__attribute__((used)) static void mfd_assert_size(int fd, size_t size)
{
 struct stat st;
 int r;

 r = fstat(fd, &st);
 if (r < 0) {
  printf("fstat(%d) failed: %m\n", fd);
  abort();
 } else if (st.st_size != size) {
  printf("wrong file size %lld, but expected %lld\n",
         (long long)st.st_size, (long long)size);
  abort();
 }
}

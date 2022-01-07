
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GET_SEALS ;
 int abort () ;
 int fcntl (int,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static unsigned int mfd_assert_get_seals(int fd)
{
 int r;

 r = fcntl(fd, F_GET_SEALS);
 if (r < 0) {
  printf("GET_SEALS(%d) failed: %m\n", fd);
  abort();
 }

 return (unsigned int)r;
}

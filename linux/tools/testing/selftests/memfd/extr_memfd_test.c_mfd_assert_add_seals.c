
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_ADD_SEALS ;
 int abort () ;
 int fcntl (int,int ,unsigned int) ;
 unsigned int mfd_assert_get_seals (int) ;
 int printf (char*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void mfd_assert_add_seals(int fd, unsigned int seals)
{
 int r;
 unsigned int s;

 s = mfd_assert_get_seals(fd);
 r = fcntl(fd, F_ADD_SEALS, seals);
 if (r < 0) {
  printf("ADD_SEALS(%d, %u -> %u) failed: %m\n", fd, s, seals);
  abort();
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 unsigned int mfd_assert_get_seals (int) ;
 int printf (char*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void mfd_assert_has_seals(int fd, unsigned int seals)
{
 unsigned int s;

 s = mfd_assert_get_seals(fd);
 if (s != seals) {
  printf("%u != %u = GET_SEALS(%d)\n", seals, s, fd);
  abort();
 }
}

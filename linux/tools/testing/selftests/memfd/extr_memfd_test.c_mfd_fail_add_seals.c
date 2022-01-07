
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_ADD_SEALS ;
 int F_GET_SEALS ;
 int abort () ;
 int fcntl (int,int ,...) ;
 int printf (char*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void mfd_fail_add_seals(int fd, unsigned int seals)
{
 int r;
 unsigned int s;

 r = fcntl(fd, F_GET_SEALS);
 if (r < 0)
  s = 0;
 else
  s = (unsigned int)r;

 r = fcntl(fd, F_ADD_SEALS, seals);
 if (r >= 0) {
  printf("ADD_SEALS(%d, %u -> %u) didn't fail as expected\n",
    fd, s, seals);
  abort();
 }
}

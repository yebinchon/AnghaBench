
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long __u64 ;


 scalar_t__ EBUSY ;
 int F_ADD_SEALS ;
 int F_GET_SEALS ;
 int abort () ;
 scalar_t__ errno ;
 long fcntl (int,int ,...) ;
 int printf (char*,int,unsigned long long,unsigned long long) ;

__attribute__((used)) static int mfd_busy_add_seals(int fd, __u64 seals)
{
 long r;
 __u64 s;

 r = fcntl(fd, F_GET_SEALS);
 if (r < 0)
  s = 0;
 else
  s = r;

 r = fcntl(fd, F_ADD_SEALS, seals);
 if (r < 0 && errno != EBUSY) {
  printf("ADD_SEALS(%d, %llu -> %llu) didn't fail as expected with EBUSY: %m\n",
         fd, (unsigned long long)s, (unsigned long long)seals);
  abort();
 }

 return r;
}

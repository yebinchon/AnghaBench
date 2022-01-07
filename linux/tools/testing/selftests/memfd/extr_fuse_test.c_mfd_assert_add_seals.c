
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;


 int F_ADD_SEALS ;
 int abort () ;
 long fcntl (int,int ,scalar_t__) ;
 scalar_t__ mfd_assert_get_seals (int) ;
 int printf (char*,int,unsigned long long,unsigned long long) ;

__attribute__((used)) static void mfd_assert_add_seals(int fd, __u64 seals)
{
 long r;
 __u64 s;

 s = mfd_assert_get_seals(fd);
 r = fcntl(fd, F_ADD_SEALS, seals);
 if (r < 0) {
  printf("ADD_SEALS(%d, %llu -> %llu) failed: %m\n",
         fd, (unsigned long long)s, (unsigned long long)seals);
  abort();
 }
}

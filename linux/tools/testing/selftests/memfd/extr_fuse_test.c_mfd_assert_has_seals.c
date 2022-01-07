
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;


 int abort () ;
 scalar_t__ mfd_assert_get_seals (int) ;
 int printf (char*,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static void mfd_assert_has_seals(int fd, __u64 seals)
{
 __u64 s;

 s = mfd_assert_get_seals(fd);
 if (s != seals) {
  printf("%llu != %llu = GET_SEALS(%d)\n",
         (unsigned long long)seals, (unsigned long long)s, fd);
  abort();
 }
}

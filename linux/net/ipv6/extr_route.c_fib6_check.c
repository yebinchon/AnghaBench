
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fib6_info {int dummy; } ;


 scalar_t__ fib6_check_expired (struct fib6_info*) ;
 int fib6_get_cookie_safe (struct fib6_info*,scalar_t__*) ;

__attribute__((used)) static bool fib6_check(struct fib6_info *f6i, u32 cookie)
{
 u32 rt_cookie = 0;

 if (!fib6_get_cookie_safe(f6i, &rt_cookie) || rt_cookie != cookie)
  return 0;

 if (fib6_check_expired(f6i))
  return 0;

 return 1;
}

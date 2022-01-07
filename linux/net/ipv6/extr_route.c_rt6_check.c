
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dst_entry {int dummy; } ;
struct rt6_info {struct dst_entry dst; } ;
struct fib6_info {int dummy; } ;


 int fib6_get_cookie_safe (struct fib6_info*,scalar_t__*) ;
 scalar_t__ rt6_check_expired (struct rt6_info*) ;

__attribute__((used)) static struct dst_entry *rt6_check(struct rt6_info *rt,
       struct fib6_info *from,
       u32 cookie)
{
 u32 rt_cookie = 0;

 if (!from || !fib6_get_cookie_safe(from, &rt_cookie) ||
     rt_cookie != cookie)
  return ((void*)0);

 if (rt6_check_expired(rt))
  return ((void*)0);

 return &rt->dst;
}

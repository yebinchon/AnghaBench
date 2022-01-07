
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_entry {scalar_t__ obsolete; } ;
struct rt6_info {struct dst_entry dst; } ;
struct fib6_info {int dummy; } ;


 scalar_t__ DST_OBSOLETE_FORCE_CHK ;
 int __rt6_check_expired (struct rt6_info*) ;
 scalar_t__ fib6_check (struct fib6_info*,int ) ;

__attribute__((used)) static struct dst_entry *rt6_dst_from_check(struct rt6_info *rt,
         struct fib6_info *from,
         u32 cookie)
{
 if (!__rt6_check_expired(rt) &&
     rt->dst.obsolete == DST_OBSOLETE_FORCE_CHK &&
     fib6_check(from, cookie))
  return &rt->dst;
 else
  return ((void*)0);
}

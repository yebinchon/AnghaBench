
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr addr; } ;
struct rt6_info {TYPE_2__ rt6i_dst; TYPE_1__ rt6i_src; } ;
struct rt6_exception_bucket {int dummy; } ;
struct rt6_exception {int stamp; } ;
struct fib6_nh {int dummy; } ;


 struct rt6_exception* __rt6_find_exception_rcu (struct rt6_exception_bucket**,int *,struct in6_addr const*) ;
 struct rt6_exception_bucket* fib6_nh_get_excptn_bucket (struct fib6_nh const*,int *) ;
 int jiffies ;

__attribute__((used)) static void fib6_nh_update_exception(const struct fib6_nh *nh, int plen,
         const struct rt6_info *rt)
{
 const struct in6_addr *src_key = ((void*)0);
 struct rt6_exception_bucket *bucket;
 struct rt6_exception *rt6_ex;

 bucket = fib6_nh_get_excptn_bucket(nh, ((void*)0));
 rt6_ex = __rt6_find_exception_rcu(&bucket, &rt->rt6i_dst.addr, src_key);
 if (rt6_ex)
  rt6_ex->stamp = jiffies;
}

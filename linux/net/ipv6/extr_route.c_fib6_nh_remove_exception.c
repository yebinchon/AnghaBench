
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
struct rt6_exception {int dummy; } ;
struct fib6_nh {int rt6i_exception_bucket; } ;


 int ENOENT ;
 struct rt6_exception* __rt6_find_exception_spinlock (struct rt6_exception_bucket**,int *,struct in6_addr const*) ;
 struct rt6_exception_bucket* fib6_nh_get_excptn_bucket (struct fib6_nh const*,int *) ;
 int rcu_access_pointer (int ) ;
 int rt6_exception_lock ;
 int rt6_remove_exception (struct rt6_exception_bucket*,struct rt6_exception*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fib6_nh_remove_exception(const struct fib6_nh *nh, int plen,
        const struct rt6_info *rt)
{
 const struct in6_addr *src_key = ((void*)0);
 struct rt6_exception_bucket *bucket;
 struct rt6_exception *rt6_ex;
 int err;

 if (!rcu_access_pointer(nh->rt6i_exception_bucket))
  return -ENOENT;

 spin_lock_bh(&rt6_exception_lock);
 bucket = fib6_nh_get_excptn_bucket(nh, &rt6_exception_lock);
 rt6_ex = __rt6_find_exception_spinlock(&bucket,
            &rt->rt6i_dst.addr,
            src_key);
 if (rt6_ex) {
  rt6_remove_exception(bucket, rt6_ex);
  err = 0;
 } else {
  err = -ENOENT;
 }

 spin_unlock_bh(&rt6_exception_lock);
 return err;
}

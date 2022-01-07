
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_exception_bucket {int dummy; } ;
struct fib6_nh {int rt6i_exception_bucket; } ;
typedef int spinlock_t ;


 unsigned long FIB6_EXCEPTION_BUCKET_FLUSHED ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct rt6_exception_bucket*) ;
 struct rt6_exception_bucket* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void fib6_nh_excptn_bucket_set_flushed(struct fib6_nh *nh,
           spinlock_t *lock)
{
 struct rt6_exception_bucket *bucket;
 unsigned long p;

 bucket = rcu_dereference_protected(nh->rt6i_exception_bucket,
        lockdep_is_held(lock));

 p = (unsigned long)bucket;
 p |= FIB6_EXCEPTION_BUCKET_FLUSHED;
 bucket = (struct rt6_exception_bucket *)p;
 rcu_assign_pointer(nh->rt6i_exception_bucket, bucket);
}

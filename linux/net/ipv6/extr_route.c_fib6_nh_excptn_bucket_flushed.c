
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_exception_bucket {int dummy; } ;


 unsigned long FIB6_EXCEPTION_BUCKET_FLUSHED ;

__attribute__((used)) static bool fib6_nh_excptn_bucket_flushed(struct rt6_exception_bucket *bucket)
{
 unsigned long p = (unsigned long)bucket;

 return !!(p & FIB6_EXCEPTION_BUCKET_FLUSHED);
}

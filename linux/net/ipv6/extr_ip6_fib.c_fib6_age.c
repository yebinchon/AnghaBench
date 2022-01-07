
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_info {int fib6_flags; int expires; } ;
struct fib6_gc_args {int more; } ;


 int RT6_TRACE (char*,struct fib6_info*) ;
 int RTF_EXPIRES ;
 unsigned long jiffies ;
 int rt6_age_exceptions (struct fib6_info*,struct fib6_gc_args*,unsigned long) ;
 scalar_t__ time_after (unsigned long,int ) ;

__attribute__((used)) static int fib6_age(struct fib6_info *rt, void *arg)
{
 struct fib6_gc_args *gc_args = arg;
 unsigned long now = jiffies;






 if (rt->fib6_flags & RTF_EXPIRES && rt->expires) {
  if (time_after(now, rt->expires)) {
   RT6_TRACE("expiring %p\n", rt);
   return -1;
  }
  gc_args->more++;
 }





 rt6_age_exceptions(rt, gc_args, now);

 return 0;
}

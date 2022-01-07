
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh {int dummy; } ;
struct fib6_info {int fib6_ref; int fib6_siblings; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct fib6_info* kzalloc (size_t,int ) ;
 int refcount_set (int *,int) ;

struct fib6_info *fib6_info_alloc(gfp_t gfp_flags, bool with_fib6_nh)
{
 struct fib6_info *f6i;
 size_t sz = sizeof(*f6i);

 if (with_fib6_nh)
  sz += sizeof(struct fib6_nh);

 f6i = kzalloc(sz, gfp_flags);
 if (!f6i)
  return ((void*)0);


 INIT_LIST_HEAD(&f6i->fib6_siblings);
 refcount_set(&f6i->fib6_ref, 1);

 return f6i;
}

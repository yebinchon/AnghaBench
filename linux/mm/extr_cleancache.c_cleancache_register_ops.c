
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleancache_ops {int dummy; } ;


 int EBUSY ;
 int cleancache_ops ;
 int cleancache_register_ops_sb ;
 scalar_t__ cmpxchg (int *,int *,struct cleancache_ops const*) ;
 int iterate_supers (int ,int *) ;

int cleancache_register_ops(const struct cleancache_ops *ops)
{
 if (cmpxchg(&cleancache_ops, ((void*)0), ops))
  return -EBUSY;
 iterate_supers(cleancache_register_ops_sb, ((void*)0));
 return 0;
}

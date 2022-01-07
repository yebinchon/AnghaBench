
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;


 int prealloc_shrinker (struct shrinker*) ;
 int register_shrinker_prepared (struct shrinker*) ;

int register_shrinker(struct shrinker *shrinker)
{
 int err = prealloc_shrinker(shrinker);

 if (err)
  return err;
 register_shrinker_prepared(shrinker);
 return 0;
}

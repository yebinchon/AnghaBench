
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {char const* name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct gen_pool* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int devm_gen_pool_release ;
 int devres_add (struct device*,struct gen_pool**) ;
 struct gen_pool** devres_alloc (int ,int,int ) ;
 int devres_free (struct gen_pool**) ;
 struct gen_pool* gen_pool_create (int,int) ;
 scalar_t__ gen_pool_get (struct device*,char const*) ;
 int kfree_const (char const*) ;
 char* kstrdup_const (char const*,int ) ;

struct gen_pool *devm_gen_pool_create(struct device *dev, int min_alloc_order,
          int nid, const char *name)
{
 struct gen_pool **ptr, *pool;
 const char *pool_name = ((void*)0);


 if (gen_pool_get(dev, name))
  return ERR_PTR(-EINVAL);

 if (name) {
  pool_name = kstrdup_const(name, GFP_KERNEL);
  if (!pool_name)
   return ERR_PTR(-ENOMEM);
 }

 ptr = devres_alloc(devm_gen_pool_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  goto free_pool_name;

 pool = gen_pool_create(min_alloc_order, nid);
 if (!pool)
  goto free_devres;

 *ptr = pool;
 pool->name = pool_name;
 devres_add(dev, ptr);

 return pool;

free_devres:
 devres_free(ptr);
free_pool_name:
 kfree_const(pool_name);

 return ERR_PTR(-ENOMEM);
}

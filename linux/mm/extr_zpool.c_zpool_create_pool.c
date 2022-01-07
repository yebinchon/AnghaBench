
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool_ops {scalar_t__ evict; } ;
struct zpool_driver {scalar_t__ shrink; int (* create ) (char const*,int ,struct zpool_ops const*,struct zpool*) ;} ;
struct zpool {int evictable; int list; int pool; struct zpool_ops const* ops; struct zpool_driver* driver; } ;
typedef int gfp_t ;


 int kfree (struct zpool*) ;
 struct zpool* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pools_head ;
 int pools_lock ;
 int pr_debug (char*,char const*) ;
 int pr_err (char*,...) ;
 int request_module (char*,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (char const*,int ,struct zpool_ops const*,struct zpool*) ;
 struct zpool_driver* zpool_get_driver (char const*) ;
 int zpool_put_driver (struct zpool_driver*) ;

struct zpool *zpool_create_pool(const char *type, const char *name, gfp_t gfp,
  const struct zpool_ops *ops)
{
 struct zpool_driver *driver;
 struct zpool *zpool;

 pr_debug("creating pool type %s\n", type);

 driver = zpool_get_driver(type);

 if (!driver) {
  request_module("zpool-%s", type);
  driver = zpool_get_driver(type);
 }

 if (!driver) {
  pr_err("no driver for type %s\n", type);
  return ((void*)0);
 }

 zpool = kmalloc(sizeof(*zpool), gfp);
 if (!zpool) {
  pr_err("couldn't create zpool - out of memory\n");
  zpool_put_driver(driver);
  return ((void*)0);
 }

 zpool->driver = driver;
 zpool->pool = driver->create(name, gfp, ops, zpool);
 zpool->ops = ops;
 zpool->evictable = driver->shrink && ops && ops->evict;

 if (!zpool->pool) {
  pr_err("couldn't create %s pool\n", type);
  zpool_put_driver(driver);
  kfree(zpool);
  return ((void*)0);
 }

 pr_debug("created pool type %s\n", type);

 spin_lock(&pools_lock);
 list_add(&zpool->list, &pools_head);
 spin_unlock(&pools_lock);

 return zpool;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int name; scalar_t__ refcount; } ;


 int dump_stack () ;
 int flush_memcg_workqueue (struct kmem_cache*) ;
 int get_online_cpus () ;
 int get_online_mems () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 int put_online_cpus () ;
 int put_online_mems () ;
 int shutdown_cache (struct kmem_cache*) ;
 int shutdown_memcg_caches (struct kmem_cache*) ;
 int slab_mutex ;
 scalar_t__ unlikely (int) ;

void kmem_cache_destroy(struct kmem_cache *s)
{
 int err;

 if (unlikely(!s))
  return;

 flush_memcg_workqueue(s);

 get_online_cpus();
 get_online_mems();

 mutex_lock(&slab_mutex);

 s->refcount--;
 if (s->refcount)
  goto out_unlock;

 err = shutdown_memcg_caches(s);
 if (!err)
  err = shutdown_cache(s);

 if (err) {
  pr_err("kmem_cache_destroy %s: Slab cache still has objects\n",
         s->name);
  dump_stack();
 }
out_unlock:
 mutex_unlock(&slab_mutex);

 put_online_mems();
 put_online_cpus();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upid {int dummy; } ;
struct pid {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int name ;


 struct kmem_cache* READ_ONCE (struct kmem_cache*) ;
 int SLAB_HWCACHE_ALIGN ;
 struct kmem_cache* kmem_cache_create (char*,unsigned int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct kmem_cache** pid_cache ;
 int pid_caches_mutex ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static struct kmem_cache *create_pid_cachep(unsigned int level)
{

 struct kmem_cache **pkc = &pid_cache[level - 1];
 struct kmem_cache *kc;
 char name[4 + 10 + 1];
 unsigned int len;

 kc = READ_ONCE(*pkc);
 if (kc)
  return kc;

 snprintf(name, sizeof(name), "pid_%u", level + 1);
 len = sizeof(struct pid) + level * sizeof(struct upid);
 mutex_lock(&pid_caches_mutex);

 if (!*pkc)
  *pkc = kmem_cache_create(name, len, 0, SLAB_HWCACHE_ALIGN, 0);
 mutex_unlock(&pid_caches_mutex);

 return READ_ONCE(*pkc);
}

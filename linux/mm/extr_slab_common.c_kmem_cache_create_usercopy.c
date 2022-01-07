
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int slab_flags_t ;


 int CACHE_CREATE_MASK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct kmem_cache*) ;
 int PTR_ERR (struct kmem_cache*) ;
 int SLAB_FLAGS_PERMITTED ;
 int SLAB_PANIC ;
 scalar_t__ WARN_ON (int) ;
 struct kmem_cache* __kmem_cache_alias (char const*,unsigned int,unsigned int,int,void (*) (void*)) ;
 int calculate_alignment (int,unsigned int,unsigned int) ;
 struct kmem_cache* create_cache (char const*,unsigned int,int ,int,unsigned int,unsigned int,void (*) (void*),int *,int *) ;
 int dump_stack () ;
 int get_online_cpus () ;
 int get_online_mems () ;
 int kfree_const (char const*) ;
 int kmem_cache_sanity_check (char const*,unsigned int) ;
 char* kstrdup_const (char const*,int ) ;
 int memcg_get_cache_ids () ;
 int memcg_put_cache_ids () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panic (char*,char const*,int) ;
 int pr_warn (char*,char const*,int) ;
 int put_online_cpus () ;
 int put_online_mems () ;
 int slab_mutex ;

struct kmem_cache *
kmem_cache_create_usercopy(const char *name,
    unsigned int size, unsigned int align,
    slab_flags_t flags,
    unsigned int useroffset, unsigned int usersize,
    void (*ctor)(void *))
{
 struct kmem_cache *s = ((void*)0);
 const char *cache_name;
 int err;

 get_online_cpus();
 get_online_mems();
 memcg_get_cache_ids();

 mutex_lock(&slab_mutex);

 err = kmem_cache_sanity_check(name, size);
 if (err) {
  goto out_unlock;
 }


 if (flags & ~SLAB_FLAGS_PERMITTED) {
  err = -EINVAL;
  goto out_unlock;
 }







 flags &= CACHE_CREATE_MASK;


 if (WARN_ON(!usersize && useroffset) ||
     WARN_ON(size < usersize || size - usersize < useroffset))
  usersize = useroffset = 0;

 if (!usersize)
  s = __kmem_cache_alias(name, size, align, flags, ctor);
 if (s)
  goto out_unlock;

 cache_name = kstrdup_const(name, GFP_KERNEL);
 if (!cache_name) {
  err = -ENOMEM;
  goto out_unlock;
 }

 s = create_cache(cache_name, size,
    calculate_alignment(flags, align, size),
    flags, useroffset, usersize, ctor, ((void*)0), ((void*)0));
 if (IS_ERR(s)) {
  err = PTR_ERR(s);
  kfree_const(cache_name);
 }

out_unlock:
 mutex_unlock(&slab_mutex);

 memcg_put_cache_ids();
 put_online_mems();
 put_online_cpus();

 if (err) {
  if (flags & SLAB_PANIC)
   panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
    name, err);
  else {
   pr_warn("kmem_cache_create(%s) failed with error %d\n",
    name, err);
   dump_stack();
  }
  return ((void*)0);
 }
 return s;
}

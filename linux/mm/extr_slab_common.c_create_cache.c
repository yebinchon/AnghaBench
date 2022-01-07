
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct kmem_cache {char const* name; unsigned int size; unsigned int object_size; unsigned int align; void (* ctor ) (void*) ;unsigned int useroffset; unsigned int usersize; int refcount; int list; } ;
typedef int slab_flags_t ;


 int ENOMEM ;
 struct kmem_cache* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __kmem_cache_create (struct kmem_cache*,int ) ;
 int destroy_memcg_params (struct kmem_cache*) ;
 int init_memcg_params (struct kmem_cache*,struct kmem_cache*) ;
 int kmem_cache ;
 int kmem_cache_free (int ,struct kmem_cache*) ;
 struct kmem_cache* kmem_cache_zalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int memcg_link_cache (struct kmem_cache*,struct mem_cgroup*) ;
 int slab_caches ;

__attribute__((used)) static struct kmem_cache *create_cache(const char *name,
  unsigned int object_size, unsigned int align,
  slab_flags_t flags, unsigned int useroffset,
  unsigned int usersize, void (*ctor)(void *),
  struct mem_cgroup *memcg, struct kmem_cache *root_cache)
{
 struct kmem_cache *s;
 int err;

 if (WARN_ON(useroffset + usersize > object_size))
  useroffset = usersize = 0;

 err = -ENOMEM;
 s = kmem_cache_zalloc(kmem_cache, GFP_KERNEL);
 if (!s)
  goto out;

 s->name = name;
 s->size = s->object_size = object_size;
 s->align = align;
 s->ctor = ctor;
 s->useroffset = useroffset;
 s->usersize = usersize;

 err = init_memcg_params(s, root_cache);
 if (err)
  goto out_free_cache;

 err = __kmem_cache_create(s, flags);
 if (err)
  goto out_free_cache;

 s->refcount = 1;
 list_add(&s->list, &slab_caches);
 memcg_link_cache(s, memcg);
out:
 if (err)
  return ERR_PTR(err);
 return s;

out_free_cache:
 destroy_memcg_params(s);
 kmem_cache_free(kmem_cache, s);
 goto out;
}

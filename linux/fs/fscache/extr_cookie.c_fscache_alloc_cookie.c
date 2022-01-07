
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie_def {int type; } ;
struct fscache_cookie {size_t key_len; size_t aux_len; int flags; int stores; int backing_objects; int stores_lock; int lock; int type; void* netfs_data; struct fscache_cookie* parent; struct fscache_cookie_def const* def; int n_active; int n_children; int usage; int aux; int inline_aux; } ;
typedef int loff_t ;


 int FSCACHE_COOKIE_NO_DATA_YET ;
 int GFP_KERNEL ;
 int GFP_NOFS ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int) ;
 int __GFP_DIRECT_RECLAIM ;
 int atomic_set (int *,int) ;
 int fscache_cookie_jar ;
 int fscache_free_cookie (struct fscache_cookie*) ;
 scalar_t__ fscache_set_key (struct fscache_cookie*,void const*,size_t) ;
 struct fscache_cookie* kmem_cache_zalloc (int ,int ) ;
 int kmemdup (void const*,int,int ) ;
 int memcpy (int ,void const*,int) ;
 int spin_lock_init (int *) ;

struct fscache_cookie *fscache_alloc_cookie(
 struct fscache_cookie *parent,
 const struct fscache_cookie_def *def,
 const void *index_key, size_t index_key_len,
 const void *aux_data, size_t aux_data_len,
 void *netfs_data,
 loff_t object_size)
{
 struct fscache_cookie *cookie;


 cookie = kmem_cache_zalloc(fscache_cookie_jar, GFP_KERNEL);
 if (!cookie)
  return ((void*)0);

 cookie->key_len = index_key_len;
 cookie->aux_len = aux_data_len;

 if (fscache_set_key(cookie, index_key, index_key_len) < 0)
  goto nomem;

 if (cookie->aux_len <= sizeof(cookie->inline_aux)) {
  memcpy(cookie->inline_aux, aux_data, cookie->aux_len);
 } else {
  cookie->aux = kmemdup(aux_data, cookie->aux_len, GFP_KERNEL);
  if (!cookie->aux)
   goto nomem;
 }

 atomic_set(&cookie->usage, 1);
 atomic_set(&cookie->n_children, 0);




 atomic_set(&cookie->n_active, 1);

 cookie->def = def;
 cookie->parent = parent;
 cookie->netfs_data = netfs_data;
 cookie->flags = (1 << FSCACHE_COOKIE_NO_DATA_YET);
 cookie->type = def->type;
 spin_lock_init(&cookie->lock);
 spin_lock_init(&cookie->stores_lock);
 INIT_HLIST_HEAD(&cookie->backing_objects);



 INIT_RADIX_TREE(&cookie->stores, GFP_NOFS & ~__GFP_DIRECT_RECLAIM);
 return cookie;

nomem:
 fscache_free_cookie(cookie);
 return ((void*)0);
}

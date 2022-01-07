
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_cookie_def {int type; int * name; } ;
struct fscache_cookie {int type; int flags; int n_children; TYPE_1__* def; } ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ name; } ;


 int BUG_ON (int) ;
 int FSCACHE_COOKIE_ENABLED ;


 int _enter (char*,char*,int *,void*,int) ;
 int _leave (char*) ;
 int atomic_dec (int *) ;
 scalar_t__ fscache_acquire_non_index_cookie (struct fscache_cookie*,int ) ;
 struct fscache_cookie* fscache_alloc_cookie (struct fscache_cookie*,struct fscache_cookie_def const*,void const*,size_t,void const*,size_t,void*,int ) ;
 int fscache_cookie_discard ;
 int fscache_cookie_put (struct fscache_cookie*,int ) ;
 int fscache_cookie_put_acquire_nobufs ;
 int fscache_free_cookie (struct fscache_cookie*) ;
 struct fscache_cookie* fscache_hash_cookie (struct fscache_cookie*) ;
 int fscache_n_acquires ;
 int fscache_n_acquires_nobufs ;
 int fscache_n_acquires_null ;
 int fscache_n_acquires_ok ;
 int fscache_n_acquires_oom ;
 int fscache_n_cookie_data ;
 int fscache_n_cookie_index ;
 int fscache_n_cookie_special ;
 int fscache_stat (int *) ;
 int set_bit (int ,int *) ;
 int trace_fscache_acquire (struct fscache_cookie*) ;
 int trace_fscache_cookie (struct fscache_cookie*,int ,int) ;

struct fscache_cookie *__fscache_acquire_cookie(
 struct fscache_cookie *parent,
 const struct fscache_cookie_def *def,
 const void *index_key, size_t index_key_len,
 const void *aux_data, size_t aux_data_len,
 void *netfs_data,
 loff_t object_size,
 bool enable)
{
 struct fscache_cookie *candidate, *cookie;

 BUG_ON(!def);

 _enter("{%s},{%s},%p,%u",
        parent ? (char *) parent->def->name : "<no-parent>",
        def->name, netfs_data, enable);

 if (!index_key || !index_key_len || index_key_len > 255 || aux_data_len > 255)
  return ((void*)0);
 if (!aux_data || !aux_data_len) {
  aux_data = ((void*)0);
  aux_data_len = 0;
 }

 fscache_stat(&fscache_n_acquires);


 if (!parent) {
  fscache_stat(&fscache_n_acquires_null);
  _leave(" [no parent]");
  return ((void*)0);
 }


 BUG_ON(!def->name[0]);

 BUG_ON(def->type == 128 &&
        parent->type != 128);

 candidate = fscache_alloc_cookie(parent, def,
      index_key, index_key_len,
      aux_data, aux_data_len,
      netfs_data, object_size);
 if (!candidate) {
  fscache_stat(&fscache_n_acquires_oom);
  _leave(" [ENOMEM]");
  return ((void*)0);
 }

 cookie = fscache_hash_cookie(candidate);
 if (!cookie) {
  trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
  goto out;
 }

 if (cookie == candidate)
  candidate = ((void*)0);

 switch (cookie->type) {
 case 128:
  fscache_stat(&fscache_n_cookie_index);
  break;
 case 129:
  fscache_stat(&fscache_n_cookie_data);
  break;
 default:
  fscache_stat(&fscache_n_cookie_special);
  break;
 }

 trace_fscache_acquire(cookie);

 if (enable) {



  if (cookie->type != 128) {
   if (fscache_acquire_non_index_cookie(cookie, object_size) == 0) {
    set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
   } else {
    atomic_dec(&parent->n_children);
    fscache_cookie_put(cookie,
         fscache_cookie_put_acquire_nobufs);
    fscache_stat(&fscache_n_acquires_nobufs);
    _leave(" = NULL");
    return ((void*)0);
   }
  } else {
   set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
  }
 }

 fscache_stat(&fscache_n_acquires_ok);

out:
 fscache_free_cookie(candidate);
 return cookie;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_netfs {int name; struct fscache_cookie* primary_index; int version; } ;
struct fscache_cookie {int flags; TYPE_1__* parent; } ;
struct TYPE_2__ {int n_children; } ;


 int EEXIST ;
 int ENOMEM ;
 int FSCACHE_COOKIE_ENABLED ;
 int _enter (char*,int ) ;
 int _leave (char*) ;
 int atomic_inc (int *) ;
 struct fscache_cookie* fscache_alloc_cookie (int *,int *,int ,int ,int *,int,struct fscache_netfs*,int ) ;
 int fscache_cookie_discard ;
 int fscache_cookie_get (TYPE_1__*,int ) ;
 int fscache_cookie_get_register_netfs ;
 int fscache_cookie_put (struct fscache_cookie*,int ) ;
 int fscache_cookie_put_dup_netfs ;
 int fscache_free_cookie (struct fscache_cookie*) ;
 int fscache_fsdef_index ;
 int fscache_fsdef_netfs_def ;
 struct fscache_cookie* fscache_hash_cookie (struct fscache_cookie*) ;
 int pr_notice (char*,int ) ;
 int strlen (int ) ;
 int trace_fscache_cookie (struct fscache_cookie*,int ,int) ;
 int trace_fscache_netfs (struct fscache_netfs*) ;

int __fscache_register_netfs(struct fscache_netfs *netfs)
{
 struct fscache_cookie *candidate, *cookie;

 _enter("{%s}", netfs->name);


 candidate = fscache_alloc_cookie(&fscache_fsdef_index,
      &fscache_fsdef_netfs_def,
      netfs->name, strlen(netfs->name),
      &netfs->version, sizeof(netfs->version),
      netfs, 0);
 if (!candidate) {
  _leave(" = -ENOMEM");
  return -ENOMEM;
 }

 candidate->flags = 1 << FSCACHE_COOKIE_ENABLED;


 cookie = fscache_hash_cookie(candidate);
 if (!cookie)
  goto already_registered;
 if (cookie != candidate) {
  trace_fscache_cookie(candidate, fscache_cookie_discard, 1);
  fscache_free_cookie(candidate);
 }

 fscache_cookie_get(cookie->parent, fscache_cookie_get_register_netfs);
 atomic_inc(&cookie->parent->n_children);

 netfs->primary_index = cookie;

 pr_notice("Netfs '%s' registered for caching\n", netfs->name);
 trace_fscache_netfs(netfs);
 _leave(" = 0");
 return 0;

already_registered:
 fscache_cookie_put(candidate, fscache_cookie_put_dup_netfs);
 _leave(" = -EEXIST");
 return -EEXIST;
}

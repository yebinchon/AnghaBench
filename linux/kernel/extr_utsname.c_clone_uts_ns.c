
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct uts_namespace {int user_ns; int name; TYPE_1__ ns; struct ucounts* ucounts; } ;
struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct uts_namespace* ERR_PTR (int) ;
 struct uts_namespace* create_uts_ns () ;
 int dec_uts_namespaces (struct ucounts*) ;
 int down_read (int *) ;
 int get_user_ns (struct user_namespace*) ;
 struct ucounts* inc_uts_namespaces (struct user_namespace*) ;
 int kmem_cache_free (int ,struct uts_namespace*) ;
 int memcpy (int *,int *,int) ;
 int ns_alloc_inum (TYPE_1__*) ;
 int up_read (int *) ;
 int uts_ns_cache ;
 int uts_sem ;
 int utsns_operations ;

__attribute__((used)) static struct uts_namespace *clone_uts_ns(struct user_namespace *user_ns,
       struct uts_namespace *old_ns)
{
 struct uts_namespace *ns;
 struct ucounts *ucounts;
 int err;

 err = -ENOSPC;
 ucounts = inc_uts_namespaces(user_ns);
 if (!ucounts)
  goto fail;

 err = -ENOMEM;
 ns = create_uts_ns();
 if (!ns)
  goto fail_dec;

 err = ns_alloc_inum(&ns->ns);
 if (err)
  goto fail_free;

 ns->ucounts = ucounts;
 ns->ns.ops = &utsns_operations;

 down_read(&uts_sem);
 memcpy(&ns->name, &old_ns->name, sizeof(ns->name));
 ns->user_ns = get_user_ns(user_ns);
 up_read(&uts_sem);
 return ns;

fail_free:
 kmem_cache_free(uts_ns_cache, ns);
fail_dec:
 dec_uts_namespaces(ucounts);
fail:
 return ERR_PTR(err);
}

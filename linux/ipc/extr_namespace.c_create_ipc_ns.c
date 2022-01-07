
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct TYPE_3__ {int * ops; } ;
struct ipc_namespace {TYPE_1__ ns; int user_ns; struct ucounts* ucounts; int count; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct ipc_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dec_ipc_namespaces (struct ucounts*) ;
 int get_user_ns (struct user_namespace*) ;
 struct ucounts* inc_ipc_namespaces (struct user_namespace*) ;
 int ipcns_operations ;
 int kfree (struct ipc_namespace*) ;
 struct ipc_namespace* kzalloc (int,int ) ;
 int mq_init_ns (struct ipc_namespace*) ;
 int msg_init_ns (struct ipc_namespace*) ;
 int ns_alloc_inum (TYPE_1__*) ;
 int ns_free_inum (TYPE_1__*) ;
 int put_user_ns (int ) ;
 int refcount_set (int *,int) ;
 int sem_init_ns (struct ipc_namespace*) ;
 int shm_init_ns (struct ipc_namespace*) ;

__attribute__((used)) static struct ipc_namespace *create_ipc_ns(struct user_namespace *user_ns,
        struct ipc_namespace *old_ns)
{
 struct ipc_namespace *ns;
 struct ucounts *ucounts;
 int err;

 err = -ENOSPC;
 ucounts = inc_ipc_namespaces(user_ns);
 if (!ucounts)
  goto fail;

 err = -ENOMEM;
 ns = kzalloc(sizeof(struct ipc_namespace), GFP_KERNEL);
 if (ns == ((void*)0))
  goto fail_dec;

 err = ns_alloc_inum(&ns->ns);
 if (err)
  goto fail_free;
 ns->ns.ops = &ipcns_operations;

 refcount_set(&ns->count, 1);
 ns->user_ns = get_user_ns(user_ns);
 ns->ucounts = ucounts;

 err = mq_init_ns(ns);
 if (err)
  goto fail_put;

 sem_init_ns(ns);
 msg_init_ns(ns);
 shm_init_ns(ns);

 return ns;

fail_put:
 put_user_ns(ns->user_ns);
 ns_free_inum(&ns->ns);
fail_free:
 kfree(ns);
fail_dec:
 dec_ipc_namespaces(ucounts);
fail:
 return ERR_PTR(err);
}

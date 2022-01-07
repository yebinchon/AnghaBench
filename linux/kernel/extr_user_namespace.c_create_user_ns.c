
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ops; } ;
struct user_namespace {int level; TYPE_1__ ns; int persistent_keyring_register; int keyring_sem; int keyring_name_list; int flags; struct ucounts* ucounts; int * ucount_max; int work; int group; int owner; struct user_namespace* parent; int count; } ;
struct ucounts {int dummy; } ;
struct cred {int egid; int euid; struct user_namespace* user_ns; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int INT_MAX ;
 int UCOUNT_COUNTS ;
 int atomic_set (int *,int) ;
 scalar_t__ current_chrooted () ;
 int dec_user_namespaces (struct ucounts*) ;
 int free_user_ns ;
 struct ucounts* inc_user_namespaces (struct user_namespace*,int ) ;
 int init_rwsem (int *) ;
 int key_put (int ) ;
 int kgid_has_mapping (struct user_namespace*,int ) ;
 int kmem_cache_free (int ,struct user_namespace*) ;
 struct user_namespace* kmem_cache_zalloc (int ,int ) ;
 int kuid_has_mapping (struct user_namespace*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ns_alloc_inum (TYPE_1__*) ;
 int ns_free_inum (TYPE_1__*) ;
 int set_cred_user_ns (struct cred*,struct user_namespace*) ;
 int setup_userns_sysctls (struct user_namespace*) ;
 int user_ns_cachep ;
 int userns_operations ;
 int userns_state_mutex ;

int create_user_ns(struct cred *new)
{
 struct user_namespace *ns, *parent_ns = new->user_ns;
 kuid_t owner = new->euid;
 kgid_t group = new->egid;
 struct ucounts *ucounts;
 int ret, i;

 ret = -ENOSPC;
 if (parent_ns->level > 32)
  goto fail;

 ucounts = inc_user_namespaces(parent_ns, owner);
 if (!ucounts)
  goto fail;







 ret = -EPERM;
 if (current_chrooted())
  goto fail_dec;





 ret = -EPERM;
 if (!kuid_has_mapping(parent_ns, owner) ||
     !kgid_has_mapping(parent_ns, group))
  goto fail_dec;

 ret = -ENOMEM;
 ns = kmem_cache_zalloc(user_ns_cachep, GFP_KERNEL);
 if (!ns)
  goto fail_dec;

 ret = ns_alloc_inum(&ns->ns);
 if (ret)
  goto fail_free;
 ns->ns.ops = &userns_operations;

 atomic_set(&ns->count, 1);

 ns->parent = parent_ns;
 ns->level = parent_ns->level + 1;
 ns->owner = owner;
 ns->group = group;
 INIT_WORK(&ns->work, free_user_ns);
 for (i = 0; i < UCOUNT_COUNTS; i++) {
  ns->ucount_max[i] = INT_MAX;
 }
 ns->ucounts = ucounts;


 mutex_lock(&userns_state_mutex);
 ns->flags = parent_ns->flags;
 mutex_unlock(&userns_state_mutex);





 ret = -ENOMEM;
 if (!setup_userns_sysctls(ns))
  goto fail_keyring;

 set_cred_user_ns(new, ns);
 return 0;
fail_keyring:



 ns_free_inum(&ns->ns);
fail_free:
 kmem_cache_free(user_ns_cachep, ns);
fail_dec:
 dec_user_namespaces(ucounts);
fail:
 return ret;
}

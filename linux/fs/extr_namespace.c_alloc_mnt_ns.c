
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct mnt_namespace {struct ucounts* ucounts; int user_ns; int poll; int list; int count; int seq; TYPE_1__ ns; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct mnt_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic64_add_return (int,int *) ;
 int atomic_set (int *,int) ;
 int dec_mnt_namespaces (struct ucounts*) ;
 int get_user_ns (struct user_namespace*) ;
 struct ucounts* inc_mnt_namespaces (struct user_namespace*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mnt_namespace*) ;
 struct mnt_namespace* kzalloc (int,int ) ;
 int mnt_ns_seq ;
 int mntns_operations ;
 int ns_alloc_inum (TYPE_1__*) ;

__attribute__((used)) static struct mnt_namespace *alloc_mnt_ns(struct user_namespace *user_ns, bool anon)
{
 struct mnt_namespace *new_ns;
 struct ucounts *ucounts;
 int ret;

 ucounts = inc_mnt_namespaces(user_ns);
 if (!ucounts)
  return ERR_PTR(-ENOSPC);

 new_ns = kzalloc(sizeof(struct mnt_namespace), GFP_KERNEL);
 if (!new_ns) {
  dec_mnt_namespaces(ucounts);
  return ERR_PTR(-ENOMEM);
 }
 if (!anon) {
  ret = ns_alloc_inum(&new_ns->ns);
  if (ret) {
   kfree(new_ns);
   dec_mnt_namespaces(ucounts);
   return ERR_PTR(ret);
  }
 }
 new_ns->ns.ops = &mntns_operations;
 if (!anon)
  new_ns->seq = atomic64_add_return(1, &mnt_ns_seq);
 atomic_set(&new_ns->count, 1);
 INIT_LIST_HEAD(&new_ns->list);
 init_waitqueue_head(&new_ns->poll);
 new_ns->user_ns = get_user_ns(user_ns);
 new_ns->ucounts = ucounts;
 return new_ns;
}

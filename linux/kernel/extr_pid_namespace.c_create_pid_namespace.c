
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct pid_namespace {int level; int idr; int proc_work; int pid_allocated; struct ucounts* ucounts; int user_ns; int parent; int kref; TYPE_1__ ns; int * pid_cachep; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 struct pid_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned int MAX_PID_NS_LEVEL ;
 int PIDNS_ADDING ;
 int * create_pid_cachep (unsigned int) ;
 int dec_pid_namespaces (struct ucounts*) ;
 int get_pid_ns (struct pid_namespace*) ;
 int get_user_ns (struct user_namespace*) ;
 int idr_destroy (int *) ;
 int idr_init (int *) ;
 int in_userns (int ,struct user_namespace*) ;
 struct ucounts* inc_pid_namespaces (struct user_namespace*) ;
 int kmem_cache_free (int ,struct pid_namespace*) ;
 struct pid_namespace* kmem_cache_zalloc (int ,int ) ;
 int kref_init (int *) ;
 int ns_alloc_inum (TYPE_1__*) ;
 int pid_ns_cachep ;
 int pidns_operations ;
 int proc_cleanup_work ;

__attribute__((used)) static struct pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
 struct pid_namespace *parent_pid_ns)
{
 struct pid_namespace *ns;
 unsigned int level = parent_pid_ns->level + 1;
 struct ucounts *ucounts;
 int err;

 err = -EINVAL;
 if (!in_userns(parent_pid_ns->user_ns, user_ns))
  goto out;

 err = -ENOSPC;
 if (level > MAX_PID_NS_LEVEL)
  goto out;
 ucounts = inc_pid_namespaces(user_ns);
 if (!ucounts)
  goto out;

 err = -ENOMEM;
 ns = kmem_cache_zalloc(pid_ns_cachep, GFP_KERNEL);
 if (ns == ((void*)0))
  goto out_dec;

 idr_init(&ns->idr);

 ns->pid_cachep = create_pid_cachep(level);
 if (ns->pid_cachep == ((void*)0))
  goto out_free_idr;

 err = ns_alloc_inum(&ns->ns);
 if (err)
  goto out_free_idr;
 ns->ns.ops = &pidns_operations;

 kref_init(&ns->kref);
 ns->level = level;
 ns->parent = get_pid_ns(parent_pid_ns);
 ns->user_ns = get_user_ns(user_ns);
 ns->ucounts = ucounts;
 ns->pid_allocated = PIDNS_ADDING;
 INIT_WORK(&ns->proc_work, proc_cleanup_work);

 return ns;

out_free_idr:
 idr_destroy(&ns->idr);
 kmem_cache_free(pid_ns_cachep, ns);
out_dec:
 dec_pid_namespaces(ucounts);
out:
 return ERR_PTR(err);
}

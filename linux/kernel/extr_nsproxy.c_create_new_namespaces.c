
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct task_struct {TYPE_1__* nsproxy; } ;
struct nsproxy {scalar_t__ mnt_ns; scalar_t__ uts_ns; scalar_t__ ipc_ns; scalar_t__ pid_ns_for_children; scalar_t__ cgroup_ns; scalar_t__ net_ns; } ;
struct fs_struct {int dummy; } ;
struct TYPE_2__ {int net_ns; int cgroup_ns; int pid_ns_for_children; int ipc_ns; int uts_ns; int mnt_ns; } ;


 int ENOMEM ;
 struct nsproxy* ERR_PTR (int) ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ copy_cgroup_ns (unsigned long,struct user_namespace*,int ) ;
 scalar_t__ copy_ipcs (unsigned long,struct user_namespace*,int ) ;
 scalar_t__ copy_mnt_ns (unsigned long,int ,struct user_namespace*,struct fs_struct*) ;
 scalar_t__ copy_net_ns (unsigned long,struct user_namespace*,int ) ;
 scalar_t__ copy_pid_ns (unsigned long,struct user_namespace*,int ) ;
 scalar_t__ copy_utsname (unsigned long,struct user_namespace*,int ) ;
 struct nsproxy* create_nsproxy () ;
 int kmem_cache_free (int ,struct nsproxy*) ;
 int nsproxy_cachep ;
 int put_cgroup_ns (scalar_t__) ;
 int put_ipc_ns (scalar_t__) ;
 int put_mnt_ns (scalar_t__) ;
 int put_pid_ns (scalar_t__) ;
 int put_uts_ns (scalar_t__) ;

__attribute__((used)) static struct nsproxy *create_new_namespaces(unsigned long flags,
 struct task_struct *tsk, struct user_namespace *user_ns,
 struct fs_struct *new_fs)
{
 struct nsproxy *new_nsp;
 int err;

 new_nsp = create_nsproxy();
 if (!new_nsp)
  return ERR_PTR(-ENOMEM);

 new_nsp->mnt_ns = copy_mnt_ns(flags, tsk->nsproxy->mnt_ns, user_ns, new_fs);
 if (IS_ERR(new_nsp->mnt_ns)) {
  err = PTR_ERR(new_nsp->mnt_ns);
  goto out_ns;
 }

 new_nsp->uts_ns = copy_utsname(flags, user_ns, tsk->nsproxy->uts_ns);
 if (IS_ERR(new_nsp->uts_ns)) {
  err = PTR_ERR(new_nsp->uts_ns);
  goto out_uts;
 }

 new_nsp->ipc_ns = copy_ipcs(flags, user_ns, tsk->nsproxy->ipc_ns);
 if (IS_ERR(new_nsp->ipc_ns)) {
  err = PTR_ERR(new_nsp->ipc_ns);
  goto out_ipc;
 }

 new_nsp->pid_ns_for_children =
  copy_pid_ns(flags, user_ns, tsk->nsproxy->pid_ns_for_children);
 if (IS_ERR(new_nsp->pid_ns_for_children)) {
  err = PTR_ERR(new_nsp->pid_ns_for_children);
  goto out_pid;
 }

 new_nsp->cgroup_ns = copy_cgroup_ns(flags, user_ns,
         tsk->nsproxy->cgroup_ns);
 if (IS_ERR(new_nsp->cgroup_ns)) {
  err = PTR_ERR(new_nsp->cgroup_ns);
  goto out_cgroup;
 }

 new_nsp->net_ns = copy_net_ns(flags, user_ns, tsk->nsproxy->net_ns);
 if (IS_ERR(new_nsp->net_ns)) {
  err = PTR_ERR(new_nsp->net_ns);
  goto out_net;
 }

 return new_nsp;

out_net:
 put_cgroup_ns(new_nsp->cgroup_ns);
out_cgroup:
 if (new_nsp->pid_ns_for_children)
  put_pid_ns(new_nsp->pid_ns_for_children);
out_pid:
 if (new_nsp->ipc_ns)
  put_ipc_ns(new_nsp->ipc_ns);
out_ipc:
 if (new_nsp->uts_ns)
  put_uts_ns(new_nsp->uts_ns);
out_uts:
 if (new_nsp->mnt_ns)
  put_mnt_ns(new_nsp->mnt_ns);
out_ns:
 kmem_cache_free(nsproxy_cachep, new_nsp);
 return ERR_PTR(err);
}

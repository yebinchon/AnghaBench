
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int net_ns; int cgroup_ns; scalar_t__ pid_ns_for_children; scalar_t__ ipc_ns; scalar_t__ uts_ns; scalar_t__ mnt_ns; } ;


 int kmem_cache_free (int ,struct nsproxy*) ;
 int nsproxy_cachep ;
 int put_cgroup_ns (int ) ;
 int put_ipc_ns (scalar_t__) ;
 int put_mnt_ns (scalar_t__) ;
 int put_net (int ) ;
 int put_pid_ns (scalar_t__) ;
 int put_uts_ns (scalar_t__) ;

void free_nsproxy(struct nsproxy *ns)
{
 if (ns->mnt_ns)
  put_mnt_ns(ns->mnt_ns);
 if (ns->uts_ns)
  put_uts_ns(ns->uts_ns);
 if (ns->ipc_ns)
  put_ipc_ns(ns->ipc_ns);
 if (ns->pid_ns_for_children)
  put_pid_ns(ns->pid_ns_for_children);
 put_cgroup_ns(ns->cgroup_ns);
 put_net(ns->net_ns);
 kmem_cache_free(nsproxy_cachep, ns);
}

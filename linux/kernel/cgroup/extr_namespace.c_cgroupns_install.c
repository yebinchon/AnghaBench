
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {struct cgroup_namespace* cgroup_ns; } ;
struct ns_common {int dummy; } ;
struct cgroup_namespace {int user_ns; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int current_user_ns () ;
 int get_cgroup_ns (struct cgroup_namespace*) ;
 int ns_capable (int ,int ) ;
 int put_cgroup_ns (struct cgroup_namespace*) ;
 struct cgroup_namespace* to_cg_ns (struct ns_common*) ;

__attribute__((used)) static int cgroupns_install(struct nsproxy *nsproxy, struct ns_common *ns)
{
 struct cgroup_namespace *cgroup_ns = to_cg_ns(ns);

 if (!ns_capable(current_user_ns(), CAP_SYS_ADMIN) ||
     !ns_capable(cgroup_ns->user_ns, CAP_SYS_ADMIN))
  return -EPERM;


 if (cgroup_ns == nsproxy->cgroup_ns)
  return 0;

 get_cgroup_ns(cgroup_ns);
 put_cgroup_ns(nsproxy->cgroup_ns);
 nsproxy->cgroup_ns = cgroup_ns;

 return 0;
}

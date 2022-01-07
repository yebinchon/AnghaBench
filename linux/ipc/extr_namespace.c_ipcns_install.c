
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int ipc_ns; } ;
struct ns_common {int dummy; } ;
struct ipc_namespace {int user_ns; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int current ;
 int current_user_ns () ;
 int exit_sem (int ) ;
 int get_ipc_ns (struct ipc_namespace*) ;
 int ns_capable (int ,int ) ;
 int put_ipc_ns (int ) ;
 struct ipc_namespace* to_ipc_ns (struct ns_common*) ;

__attribute__((used)) static int ipcns_install(struct nsproxy *nsproxy, struct ns_common *new)
{
 struct ipc_namespace *ns = to_ipc_ns(new);
 if (!ns_capable(ns->user_ns, CAP_SYS_ADMIN) ||
     !ns_capable(current_user_ns(), CAP_SYS_ADMIN))
  return -EPERM;


 exit_sem(current);
 put_ipc_ns(nsproxy->ipc_ns);
 nsproxy->ipc_ns = get_ipc_ns(ns);
 return 0;
}

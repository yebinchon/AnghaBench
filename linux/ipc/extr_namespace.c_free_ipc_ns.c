
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int ns; int user_ns; int ucounts; } ;


 int dec_ipc_namespaces (int ) ;
 int kfree (struct ipc_namespace*) ;
 int msg_exit_ns (struct ipc_namespace*) ;
 int ns_free_inum (int *) ;
 int put_user_ns (int ) ;
 int sem_exit_ns (struct ipc_namespace*) ;
 int shm_exit_ns (struct ipc_namespace*) ;

__attribute__((used)) static void free_ipc_ns(struct ipc_namespace *ns)
{
 sem_exit_ns(ns);
 msg_exit_ns(ns);
 shm_exit_ns(ns);

 dec_ipc_namespaces(ns->ucounts);
 put_user_ns(ns->user_ns);
 ns_free_inum(&ns->ns);
 kfree(ns);
}

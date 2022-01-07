
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int rcu; int idr; int ns; } ;


 int call_rcu (int *,int ) ;
 int delayed_free_pidns ;
 int idr_destroy (int *) ;
 int ns_free_inum (int *) ;

__attribute__((used)) static void destroy_pid_namespace(struct pid_namespace *ns)
{
 ns_free_inum(&ns->ns);

 idr_destroy(&ns->idr);
 call_rcu(&ns->rcu, delayed_free_pidns);
}

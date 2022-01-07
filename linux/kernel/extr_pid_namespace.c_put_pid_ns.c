
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int kref; struct pid_namespace* parent; } ;


 int free_pid_ns ;
 struct pid_namespace init_pid_ns ;
 int kref_put (int *,int ) ;

void put_pid_ns(struct pid_namespace *ns)
{
 struct pid_namespace *parent;

 while (ns != &init_pid_ns) {
  parent = ns->parent;
  if (!kref_put(&ns->kref, free_pid_ns))
   break;
  ns = parent;
 }
}

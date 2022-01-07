
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_ns_operations {char* name; int (* put ) (struct ns_common*) ;scalar_t__ real_ns_name; struct ns_common* (* get ) (struct task_struct*) ;} ;
struct ns_common {int inum; } ;


 int ENOENT ;
 int snprintf (char*,size_t,char*,char const*,int) ;
 struct ns_common* stub1 (struct task_struct*) ;
 int stub2 (struct ns_common*) ;

int ns_get_name(char *buf, size_t size, struct task_struct *task,
   const struct proc_ns_operations *ns_ops)
{
 struct ns_common *ns;
 int res = -ENOENT;
 const char *name;
 ns = ns_ops->get(task);
 if (ns) {
  name = ns_ops->real_ns_name ? : ns_ops->name;
  res = snprintf(buf, size, "%s:[%u]", name, ns->inum);
  ns_ops->put(ns);
 }
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int * proc_dops; } ;


 int proc_net_dentry_ops ;

__attribute__((used)) static void pde_force_lookup(struct proc_dir_entry *pde)
{

 pde->proc_dops = &proc_net_dentry_ops;
}

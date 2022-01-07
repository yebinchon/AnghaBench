
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int call_int_hook (int ,int ,struct kernfs_node*,struct kernfs_node*) ;
 int kernfs_init_security ;

int security_kernfs_init_security(struct kernfs_node *kn_dir,
      struct kernfs_node *kn)
{
 return call_int_hook(kernfs_init_security, 0, kn_dir, kn);
}

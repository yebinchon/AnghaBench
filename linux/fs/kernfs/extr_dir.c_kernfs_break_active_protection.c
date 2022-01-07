
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int kernfs_put_active (struct kernfs_node*) ;

void kernfs_break_active_protection(struct kernfs_node *kn)
{




 kernfs_put_active(kn);
}

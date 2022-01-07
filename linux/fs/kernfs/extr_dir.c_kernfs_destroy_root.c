
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_root {int kn; } ;


 int kernfs_remove (int ) ;

void kernfs_destroy_root(struct kernfs_root *root)
{
 kernfs_remove(root->kn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_root {int cgroup_idr; } ;


 int idr_destroy (int *) ;
 int kfree (struct cgroup_root*) ;

void cgroup_free_root(struct cgroup_root *root)
{
 if (root) {
  idr_destroy(&root->cgroup_idr);
  kfree(root);
 }
}

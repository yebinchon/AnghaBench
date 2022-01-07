
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct ceph_pg_pool_info {struct ceph_pg_pool_info* name; int node; } ;


 int kfree (struct ceph_pg_pool_info*) ;
 int rb_erase (int *,struct rb_root*) ;

__attribute__((used)) static void __remove_pg_pool(struct rb_root *root, struct ceph_pg_pool_info *pi)
{
 rb_erase(&pi->node, root);
 kfree(pi->name);
 kfree(pi);
}

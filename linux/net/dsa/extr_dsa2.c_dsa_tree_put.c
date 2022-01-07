
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int refcount; } ;


 int dsa_tree_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void dsa_tree_put(struct dsa_switch_tree *dst)
{
 if (dst)
  kref_put(&dst->refcount, dsa_tree_release);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct dsa_switch_tree *dsa_tree_get(struct dsa_switch_tree *dst)
{
 if (dst)
  kref_get(&dst->refcount);

 return dst;
}

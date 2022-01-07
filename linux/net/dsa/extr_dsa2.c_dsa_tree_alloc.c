
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int index; int refcount; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dsa_tree_list ;
 int kref_init (int *) ;
 struct dsa_switch_tree* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct dsa_switch_tree *dsa_tree_alloc(int index)
{
 struct dsa_switch_tree *dst;

 dst = kzalloc(sizeof(*dst), GFP_KERNEL);
 if (!dst)
  return ((void*)0);

 dst->index = index;

 INIT_LIST_HEAD(&dst->list);
 list_add_tail(&dst->list, &dsa_tree_list);

 kref_init(&dst->refcount);

 return dst;
}

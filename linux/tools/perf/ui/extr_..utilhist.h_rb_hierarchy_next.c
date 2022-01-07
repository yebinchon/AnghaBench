
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;


 int HMD_NORMAL ;
 struct rb_node* __rb_hierarchy_next (struct rb_node*,int ) ;

__attribute__((used)) static inline struct rb_node *rb_hierarchy_next(struct rb_node *node)
{
 return __rb_hierarchy_next(node, HMD_NORMAL);
}

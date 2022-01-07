
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_root_in; scalar_t__ children_hit; scalar_t__ hit; int * parent; int parent_val; int val; } ;
struct callchain_root {scalar_t__ max_depth; TYPE_1__ node; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;

__attribute__((used)) static inline void callchain_init(struct callchain_root *root)
{
 INIT_LIST_HEAD(&root->node.val);
 INIT_LIST_HEAD(&root->node.parent_val);

 root->node.parent = ((void*)0);
 root->node.hit = 0;
 root->node.children_hit = 0;
 root->node.rb_root_in = RB_ROOT;
 root->max_depth = 0;
}

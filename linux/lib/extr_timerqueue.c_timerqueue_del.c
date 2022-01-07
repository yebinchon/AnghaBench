
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timerqueue_node {int node; } ;
struct TYPE_2__ {int rb_root; } ;
struct timerqueue_head {TYPE_1__ rb_root; } ;


 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON_ONCE (int ) ;
 int rb_erase_cached (int *,TYPE_1__*) ;

bool timerqueue_del(struct timerqueue_head *head, struct timerqueue_node *node)
{
 WARN_ON_ONCE(RB_EMPTY_NODE(&node->node));

 rb_erase_cached(&node->node, &head->rb_root);
 RB_CLEAR_NODE(&node->node);

 return !RB_EMPTY_ROOT(&head->rb_root.rb_root);
}

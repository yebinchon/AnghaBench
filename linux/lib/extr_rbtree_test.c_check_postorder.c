
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct TYPE_2__ {int rb_root; } ;


 int WARN_ON_ONCE (int) ;
 struct rb_node* rb_first_postorder (int *) ;
 struct rb_node* rb_next_postorder (struct rb_node*) ;
 TYPE_1__ root ;

__attribute__((used)) static void check_postorder(int nr_nodes)
{
 struct rb_node *rb;
 int count = 0;
 for (rb = rb_first_postorder(&root.rb_root); rb; rb = rb_next_postorder(rb))
  count++;

 WARN_ON_ONCE(count != nr_nodes);
}

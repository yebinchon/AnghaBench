
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_root; } ;
struct hist_entry {int init_have_children; int has_children; TYPE_1__ hroot_out; int sorted_chain; scalar_t__ leaf; } ;


 int RB_EMPTY_ROOT (int *) ;
 int callchain__init_have_children (int *) ;

__attribute__((used)) static void hist_entry__init_have_children(struct hist_entry *he)
{
 if (he->init_have_children)
  return;

 if (he->leaf) {
  he->has_children = !RB_EMPTY_ROOT(&he->sorted_chain);
  callchain__init_have_children(&he->sorted_chain);
 } else {
  he->has_children = !RB_EMPTY_ROOT(&he->hroot_out.rb_root);
 }

 he->init_have_children = 1;
}

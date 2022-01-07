
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__ item_pos; scalar_t__ s0num; } ;
struct item_head {int dummy; } ;


 int M_INSERT ;
 int balance_leaf_finish_node_insert (struct tree_balance*,struct item_head* const,char const* const) ;
 int balance_leaf_finish_node_paste (struct tree_balance*,struct item_head* const,char const* const) ;

__attribute__((used)) static void balance_leaf_finish_node(struct tree_balance *tb,
          struct item_head * const ih,
          const char * const body, int flag)
{

 if (0 <= tb->item_pos && tb->item_pos < tb->s0num) {
  if (flag == M_INSERT)
   balance_leaf_finish_node_insert(tb, ih, body);
  else
   balance_leaf_finish_node_paste(tb, ih, body);
 }
}

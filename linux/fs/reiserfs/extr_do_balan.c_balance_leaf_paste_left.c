
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int item_pos; int* lnum; int lbytes; } ;
struct item_head {int dummy; } ;


 unsigned int balance_leaf_paste_left_shift (struct tree_balance*,struct item_head* const,char const* const) ;
 int balance_leaf_paste_left_whole (struct tree_balance*,struct item_head* const,char const* const) ;

__attribute__((used)) static unsigned int balance_leaf_paste_left(struct tree_balance *tb,
         struct item_head * const ih,
         const char * const body)
{

 if (tb->item_pos == tb->lnum[0] - 1 && tb->lbytes != -1)
  return balance_leaf_paste_left_shift(tb, ih, body);
 else
  balance_leaf_paste_left_whole(tb, ih, body);
 return 0;
}

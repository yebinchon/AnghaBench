
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__* lnum; scalar_t__ item_pos; int lbytes; } ;
struct item_head {int dummy; } ;


 int BUG_ON (int) ;
 int M_INSERT ;
 int M_PASTE ;
 unsigned int balance_leaf_insert_left (struct tree_balance*,struct item_head* const,char const* const) ;
 unsigned int balance_leaf_paste_left (struct tree_balance*,struct item_head* const,char const* const) ;
 int leaf_shift_left (struct tree_balance*,scalar_t__,int ) ;

__attribute__((used)) static unsigned int balance_leaf_left(struct tree_balance *tb,
          struct item_head * const ih,
          const char * const body, int flag)
{
 if (tb->lnum[0] <= 0)
  return 0;


 if (tb->item_pos < tb->lnum[0]) {
  BUG_ON(flag != M_INSERT && flag != M_PASTE);

  if (flag == M_INSERT)
   return balance_leaf_insert_left(tb, ih, body);
  else
   return balance_leaf_paste_left(tb, ih, body);
 } else

  leaf_shift_left(tb, tb->lnum[0], tb->lbytes);
 return 0;
}

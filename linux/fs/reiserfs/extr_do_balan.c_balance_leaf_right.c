
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__* rnum; } ;
struct item_head {int dummy; } ;


 int BUG_ON (int) ;
 int M_INSERT ;
 int M_PASTE ;
 int balance_leaf_insert_right (struct tree_balance*,struct item_head* const,char const* const) ;
 int balance_leaf_paste_right (struct tree_balance*,struct item_head* const,char const* const) ;

__attribute__((used)) static void balance_leaf_right(struct tree_balance *tb,
          struct item_head * const ih,
          const char * const body, int flag)
{
 if (tb->rnum[0] <= 0)
  return;

 BUG_ON(flag != M_INSERT && flag != M_PASTE);

 if (flag == M_INSERT)
  balance_leaf_insert_right(tb, ih, body);
 else
  balance_leaf_paste_right(tb, ih, body);
}

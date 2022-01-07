
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int* rnum; int item_pos; int rbytes; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int balance_leaf_paste_right_shift (struct tree_balance*,struct item_head* const,char const* const) ;
 int balance_leaf_paste_right_whole (struct tree_balance*,struct item_head* const,char const* const) ;
 int leaf_shift_right (struct tree_balance*,int,int) ;

__attribute__((used)) static void balance_leaf_paste_right(struct tree_balance *tb,
         struct item_head * const ih,
         const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tbS0);


 if (n - tb->rnum[0] > tb->item_pos) {
  leaf_shift_right(tb, tb->rnum[0], tb->rbytes);
  return;
 }



 if (tb->item_pos == n - tb->rnum[0] && tb->rbytes != -1)

  balance_leaf_paste_right_shift(tb, ih, body);
 else

  balance_leaf_paste_right_whole(tb, ih, body);
}

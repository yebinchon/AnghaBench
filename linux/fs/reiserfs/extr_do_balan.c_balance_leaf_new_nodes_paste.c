
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int* snum; int item_pos; int* sbytes; int * S_new; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int LEAF_FROM_S_TO_SNEW ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int balance_leaf_new_nodes_paste_shift (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ;
 int balance_leaf_new_nodes_paste_whole (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ;
 int leaf_move_items (int ,struct tree_balance*,int,int,int ) ;

__attribute__((used)) static void balance_leaf_new_nodes_paste(struct tree_balance *tb,
      struct item_head * const ih,
      const char * const body,
      struct item_head *insert_key,
      struct buffer_head **insert_ptr,
      int i)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tbS0);


 if (n - tb->snum[i] > tb->item_pos) {
  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb,
    tb->snum[i], tb->sbytes[i], tb->S_new[i]);
  return;
 }



 if (tb->item_pos == n - tb->snum[i] && tb->sbytes[i] != -1)

  balance_leaf_new_nodes_paste_shift(tb, ih, body, insert_key,
         insert_ptr, i);
 else

  balance_leaf_new_nodes_paste_whole(tb, ih, body, insert_key,
         insert_ptr, i);
}

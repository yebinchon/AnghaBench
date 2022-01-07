
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int lbytes; int pos_in_item; int * lnum; int * insert_size; scalar_t__ item_pos; int zeroes_num; int * L; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;


 int B_NR_ITEMS (int ) ;
 int DEH_SIZE ;
 int RFALSE (int ,char*) ;
 int buffer_info_init_left (struct tree_balance*,struct buffer_info*) ;
 int ih_entry_count (struct item_head*) ;
 struct item_head* item_head (int ,int) ;
 int leaf_paste_entries (struct buffer_info*,scalar_t__,int,int,struct reiserfs_de_head*,char const* const,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,scalar_t__,int,int ,char const* const,int ) ;
 int leaf_shift_left (struct tree_balance*,int ,int) ;

__attribute__((used)) static void balance_leaf_paste_left_shift_dirent(struct tree_balance *tb,
       struct item_head * const ih,
       const char * const body)
{
 int n = B_NR_ITEMS(tb->L[0]);
 struct buffer_info bi;

 RFALSE(tb->zeroes_num,
        "PAP-12090: invalid parameter in case of a directory");


 if (tb->lbytes > tb->pos_in_item) {

  struct item_head *pasted;
  int ret, l_pos_in_item = tb->pos_in_item;





  ret = leaf_shift_left(tb, tb->lnum[0], tb->lbytes - 1);
  if (ret && !tb->item_pos) {
   pasted = item_head(tb->L[0], B_NR_ITEMS(tb->L[0]) - 1);
   l_pos_in_item += ih_entry_count(pasted) -
      (tb->lbytes - 1);
  }


  buffer_info_init_left(tb, &bi);
  leaf_paste_in_buffer(&bi, n + tb->item_pos - ret,
         l_pos_in_item, tb->insert_size[0],
         body, tb->zeroes_num);
  leaf_paste_entries(&bi, n + tb->item_pos - ret,
       l_pos_in_item, 1,
       (struct reiserfs_de_head *) body,
       body + DEH_SIZE, tb->insert_size[0]);
  tb->insert_size[0] = 0;
 } else {





  leaf_shift_left(tb, tb->lnum[0], tb->lbytes);
 }


 tb->pos_in_item -= tb->lbytes;
}

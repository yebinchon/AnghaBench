
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int item_pos; int zeroes_num; int * insert_size; int pos_in_item; int * L; int lbytes; int * lnum; int tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int b_size; } ;


 int B_NR_ITEMS (int ) ;
 int DEH_SIZE ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int buffer_info_init_left (struct tree_balance*,struct buffer_info*) ;
 scalar_t__ ih_entry_count (struct item_head*) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 struct item_head* item_head (int ,int) ;
 int leaf_key (struct buffer_head*,int ) ;
 int leaf_paste_entries (struct buffer_info*,int,int ,int,struct reiserfs_de_head*,char const* const,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,int,int ,int ,char const* const,int ) ;
 int leaf_shift_left (struct tree_balance*,int ,int ) ;
 scalar_t__ op_is_left_mergeable (int ,int ) ;
 int set_ih_free_space (struct item_head*,int ) ;

__attribute__((used)) static void balance_leaf_paste_left_whole(struct tree_balance *tb,
       struct item_head * const ih,
       const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tb->L[0]);
 struct buffer_info bi;
 struct item_head *pasted;
 int ret;


 if (!tb->item_pos &&
     op_is_left_mergeable(leaf_key(tbS0, 0), tbS0->b_size)) {




  pasted = item_head(tb->L[0], n - 1);
  if (is_direntry_le_ih(pasted))
   tb->pos_in_item += ih_entry_count(pasted);
  else
   tb->pos_in_item += ih_item_len(pasted);
 }





 ret = leaf_shift_left(tb, tb->lnum[0], tb->lbytes);


 buffer_info_init_left(tb, &bi);
 leaf_paste_in_buffer(&bi, n + tb->item_pos - ret, tb->pos_in_item,
        tb->insert_size[0], body, tb->zeroes_num);


 pasted = item_head(tb->L[0], n + tb->item_pos - ret);
 if (is_direntry_le_ih(pasted))
  leaf_paste_entries(&bi, n + tb->item_pos - ret,
       tb->pos_in_item, 1,
       (struct reiserfs_de_head *)body,
       body + DEH_SIZE, tb->insert_size[0]);





 if (is_indirect_le_ih(pasted))
  set_ih_free_space(pasted, 0);

 tb->insert_size[0] = 0;
 tb->zeroes_num = 0;
}

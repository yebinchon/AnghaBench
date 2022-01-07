
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {scalar_t__ pos_in_item; int * insert_size; int tb_sb; int zeroes_num; int item_pos; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,int ) ;
 int balance_leaf_finish_node_paste_dirent (struct tree_balance*,struct item_head* const,char const* const) ;
 int buffer_info_init_tbS0 (struct tree_balance*,struct buffer_info*) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 struct item_head* item_head (struct buffer_head*,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,int ,scalar_t__,int ,char const* const,int ) ;
 int print_cur_tb (char*) ;
 int reiserfs_panic (int ,char*,char*,int ) ;
 int set_ih_free_space (struct item_head*,int ) ;

__attribute__((used)) static void balance_leaf_finish_node_paste(struct tree_balance *tb,
        struct item_head * const ih,
        const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct buffer_info bi;
 struct item_head *pasted = item_head(tbS0, tb->item_pos);


 if (is_direntry_le_ih(pasted)) {
  balance_leaf_finish_node_paste_dirent(tb, ih, body);
  return;
 }



 if (tb->pos_in_item == ih_item_len(pasted)) {
  RFALSE(tb->insert_size[0] <= 0,
         "PAP-12275: insert size must not be %d",
         tb->insert_size[0]);
  buffer_info_init_tbS0(tb, &bi);
  leaf_paste_in_buffer(&bi, tb->item_pos,
         tb->pos_in_item, tb->insert_size[0], body,
         tb->zeroes_num);

  if (is_indirect_le_ih(pasted))
   set_ih_free_space(pasted, 0);

  tb->insert_size[0] = 0;
 }







}

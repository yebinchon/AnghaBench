
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int item_pos; scalar_t__ pos_in_item; scalar_t__* insert_size; int* snum; scalar_t__ zeroes_num; struct buffer_head** S_new; int * sbytes; int tb_sb; int tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int DEH_SIZE ;
 int LEAF_FROM_S_TO_SNEW ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,int) ;
 int buffer_info_init_bh (struct tree_balance*,struct buffer_info*,struct buffer_head*) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 struct item_head* item_head (struct buffer_head*,int) ;
 int leaf_move_items (int ,struct tree_balance*,int,int ,struct buffer_head*) ;
 int leaf_paste_entries (struct buffer_info*,int,scalar_t__,int,struct reiserfs_de_head*,char const* const,scalar_t__) ;
 int leaf_paste_in_buffer (struct buffer_info*,int,scalar_t__,scalar_t__,char const* const,scalar_t__) ;
 int reiserfs_panic (int ,char*,char*) ;
 int set_ih_free_space (struct item_head*,int ) ;

__attribute__((used)) static void balance_leaf_new_nodes_paste_whole(struct tree_balance *tb,
            struct item_head * const ih,
            const char * const body,
            struct item_head *insert_key,
            struct buffer_head **insert_ptr,
            int i)

{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tbS0);
 int leaf_mi;
 struct item_head *pasted;
 struct buffer_info bi;
 leaf_mi = leaf_move_items(LEAF_FROM_S_TO_SNEW, tb, tb->snum[i],
      tb->sbytes[i], tb->S_new[i]);

 RFALSE(leaf_mi,
        "PAP-12240: unexpected value returned by leaf_move_items (%d)",
        leaf_mi);


 buffer_info_init_bh(tb, &bi, tb->S_new[i]);
 leaf_paste_in_buffer(&bi, tb->item_pos - n + tb->snum[i],
        tb->pos_in_item, tb->insert_size[0],
        body, tb->zeroes_num);

 pasted = item_head(tb->S_new[i], tb->item_pos - n +
      tb->snum[i]);
 if (is_direntry_le_ih(pasted))
  leaf_paste_entries(&bi, tb->item_pos - n + tb->snum[i],
       tb->pos_in_item, 1,
       (struct reiserfs_de_head *)body,
       body + DEH_SIZE, tb->insert_size[0]);


 if (is_indirect_le_ih(pasted))
  set_ih_free_space(pasted, 0);

 tb->zeroes_num = tb->insert_size[0] = 0;

}

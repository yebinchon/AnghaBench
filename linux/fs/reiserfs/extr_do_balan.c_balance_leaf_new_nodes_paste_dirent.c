
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int* sbytes; int pos_in_item; int * S_new; int * snum; int * insert_size; int zeroes_num; int item_pos; int tb_path; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int DEH_SIZE ;
 int LEAF_FROM_S_TO_SNEW ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,...) ;
 int buffer_info_init_bh (struct tree_balance*,struct buffer_info*,int ) ;
 int ih_entry_count (struct item_head*) ;
 struct item_head* item_head (struct buffer_head*,int ) ;
 int leaf_move_items (int ,struct tree_balance*,int ,int,int ) ;
 int leaf_paste_entries (struct buffer_info*,int ,int,int,struct reiserfs_de_head*,char const* const,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,int ,int,int ,char const* const,int ) ;

__attribute__((used)) static void balance_leaf_new_nodes_paste_dirent(struct tree_balance *tb,
      struct item_head * const ih,
      const char * const body,
      struct item_head *insert_key,
      struct buffer_head **insert_ptr,
      int i)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct item_head *aux_ih = item_head(tbS0, tb->item_pos);
 int entry_count = ih_entry_count(aux_ih);
 struct buffer_info bi;

 if (entry_count - tb->sbytes[i] < tb->pos_in_item &&
     tb->pos_in_item <= entry_count) {


  RFALSE(!tb->insert_size[0],
         "PAP-12215: insert_size is already 0");
  RFALSE(tb->sbytes[i] - 1 >= entry_count,
         "PAP-12220: there are no so much entries (%d), only %d",
         tb->sbytes[i] - 1, entry_count);






  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb, tb->snum[i],
    tb->sbytes[i] - 1, tb->S_new[i]);





  buffer_info_init_bh(tb, &bi, tb->S_new[i]);
  leaf_paste_in_buffer(&bi, 0, tb->pos_in_item - entry_count +
         tb->sbytes[i] - 1, tb->insert_size[0],
         body, tb->zeroes_num);


  leaf_paste_entries(&bi, 0, tb->pos_in_item - entry_count +
       tb->sbytes[i] - 1, 1,
       (struct reiserfs_de_head *) body,
       body + DEH_SIZE, tb->insert_size[0]);

  tb->insert_size[0] = 0;
  tb->pos_in_item++;
 } else {

  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb, tb->snum[i],
    tb->sbytes[i], tb->S_new[i]);
 }

}

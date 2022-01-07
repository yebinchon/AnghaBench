
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int* snum; int item_pos; int* sbytes; int zeroes_num; int* insert_size; int * S_new; TYPE_1__* tb_sb; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int LEAF_FROM_S_TO_SNEW ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int UNFM_P_SHIFT ;
 int buffer_info_init_bh (struct tree_balance*,struct buffer_info*,int ) ;
 int ih_item_len (struct item_head* const) ;
 scalar_t__ is_indirect_le_ih (struct item_head* const) ;
 int le_ih_k_offset (struct item_head* const) ;
 int leaf_insert_into_buf (struct buffer_info*,int,struct item_head* const,char const* const,int) ;
 int leaf_move_items (int ,struct tree_balance*,int,int,int ) ;
 int put_ih_item_len (struct item_head* const,int) ;
 int set_le_ih_k_offset (struct item_head* const,int) ;

__attribute__((used)) static void balance_leaf_new_nodes_insert(struct tree_balance *tb,
       struct item_head * const ih,
       const char * const body,
       struct item_head *insert_key,
       struct buffer_head **insert_ptr,
       int i)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tbS0);
 struct buffer_info bi;
 int shift;


 if (n - tb->snum[i] >= tb->item_pos) {
  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb,
    tb->snum[i], tb->sbytes[i], tb->S_new[i]);
  return;
 }




 if (tb->item_pos == n - tb->snum[i] + 1 && tb->sbytes[i] != -1) {
  int old_key_comp, old_len, r_zeroes_number;
  const char *r_body;


  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb, tb->snum[i] - 1, -1,
    tb->S_new[i]);


  old_key_comp = le_ih_k_offset(ih);
  old_len = ih_item_len(ih);





  shift = 0;
  if (is_indirect_le_ih(ih))
   shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
  set_le_ih_k_offset(ih,
       le_ih_k_offset(ih) +
       ((old_len - tb->sbytes[i]) << shift));

  put_ih_item_len(ih, tb->sbytes[i]);


  buffer_info_init_bh(tb, &bi, tb->S_new[i]);

  if ((old_len - tb->sbytes[i]) > tb->zeroes_num) {
   r_zeroes_number = 0;
   r_body = body + (old_len - tb->sbytes[i]) -
      tb->zeroes_num;
  } else {
   r_body = body;
   r_zeroes_number = tb->zeroes_num - (old_len -
       tb->sbytes[i]);
   tb->zeroes_num -= r_zeroes_number;
  }

  leaf_insert_into_buf(&bi, 0, ih, r_body, r_zeroes_number);





  set_le_ih_k_offset(ih, old_key_comp);
  put_ih_item_len(ih, old_len - tb->sbytes[i]);
  tb->insert_size[0] -= tb->sbytes[i];
 } else {






  leaf_move_items(LEAF_FROM_S_TO_SNEW, tb,
    tb->snum[i] - 1, tb->sbytes[i], tb->S_new[i]);


  buffer_info_init_bh(tb, &bi, tb->S_new[i]);
  leaf_insert_into_buf(&bi, tb->item_pos - n + tb->snum[i] - 1,
         ih, body, tb->zeroes_num);

  tb->zeroes_num = tb->insert_size[0] = 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int* rnum; int item_pos; int rbytes; int zeroes_num; int* insert_size; int * R; int * rkey; int * CFR; TYPE_1__* tb_sb; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int UNFM_P_SHIFT ;
 int buffer_info_init_right (struct tree_balance*,struct buffer_info*) ;
 int ih_item_len (struct item_head* const) ;
 scalar_t__ is_indirect_le_ih (struct item_head* const) ;
 int le_ih_k_offset (struct item_head* const) ;
 int leaf_insert_into_buf (struct buffer_info*,int,struct item_head* const,char const* const,int) ;
 int leaf_shift_right (struct tree_balance*,int,int) ;
 int put_ih_item_len (struct item_head* const,int) ;
 int replace_key (struct tree_balance*,int ,int ,int ,int ) ;
 int set_le_ih_k_offset (struct item_head* const,int) ;

__attribute__((used)) static void balance_leaf_insert_right(struct tree_balance *tb,
          struct item_head * const ih,
          const char * const body)
{

 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n = B_NR_ITEMS(tbS0);
 struct buffer_info bi;


 if (n - tb->rnum[0] >= tb->item_pos) {
  leaf_shift_right(tb, tb->rnum[0], tb->rbytes);
  return;
 }




 if (tb->item_pos == n - tb->rnum[0] + 1 && tb->rbytes != -1) {
  loff_t old_key_comp, old_len, r_zeroes_number;
  const char *r_body;
  int shift;
  loff_t offset;

  leaf_shift_right(tb, tb->rnum[0] - 1, -1);


  old_key_comp = le_ih_k_offset(ih);
  old_len = ih_item_len(ih);





  shift = 0;
  if (is_indirect_le_ih(ih))
   shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
  offset = le_ih_k_offset(ih) + ((old_len - tb->rbytes) << shift);
  set_le_ih_k_offset(ih, offset);
  put_ih_item_len(ih, tb->rbytes);


  buffer_info_init_right(tb, &bi);
  if ((old_len - tb->rbytes) > tb->zeroes_num) {
   r_zeroes_number = 0;
   r_body = body + (old_len - tb->rbytes) - tb->zeroes_num;
  } else {
   r_body = body;
   r_zeroes_number = tb->zeroes_num -
       (old_len - tb->rbytes);
   tb->zeroes_num -= r_zeroes_number;
  }

  leaf_insert_into_buf(&bi, 0, ih, r_body, r_zeroes_number);


  replace_key(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);





  set_le_ih_k_offset(ih, old_key_comp);
  put_ih_item_len(ih, old_len - tb->rbytes);

  tb->insert_size[0] -= tb->rbytes;

 } else {



  leaf_shift_right(tb, tb->rnum[0] - 1, tb->rbytes);


  buffer_info_init_right(tb, &bi);
  leaf_insert_into_buf(&bi, tb->item_pos - n + tb->rnum[0] - 1,
         ih, body, tb->zeroes_num);

  if (tb->item_pos - n + tb->rnum[0] - 1 == 0)
   replace_key(tb, tb->CFR[0], tb->rkey[0], tb->R[0], 0);

  tb->zeroes_num = tb->insert_size[0] = 0;
 }
}

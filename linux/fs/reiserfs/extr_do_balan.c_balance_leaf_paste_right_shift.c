
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {int rbytes; int* insert_size; scalar_t__ pos_in_item; int zeroes_num; struct buffer_head** R; int * CFR; int * rkey; TYPE_1__* tb_sb; int * rnum; int item_pos; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,scalar_t__,scalar_t__) ;
 int UNFM_P_SHIFT ;
 int add_le_key_k_offset (int,int ,unsigned long) ;
 int balance_leaf_paste_right_shift_dirent (struct tree_balance*,struct item_head* const,char const* const) ;
 int buffer_info_init_right (struct tree_balance*,struct buffer_info*) ;
 int do_balance_mark_internal_dirty (struct tree_balance*,int ,int ) ;
 scalar_t__ ih_item_len (int ) ;
 int ih_version (int ) ;
 int internal_key (int ,int ) ;
 scalar_t__ is_direntry_le_ih (int ) ;
 scalar_t__ is_indirect_le_ih (int ) ;
 scalar_t__ is_indirect_le_key (int,int ) ;
 int item_head (struct buffer_head*,int ) ;
 int leaf_key (struct buffer_head*,int ) ;
 int leaf_paste_in_buffer (struct buffer_info*,int ,int,int,char const*,int) ;
 int leaf_shift_right (struct tree_balance*,int ,int) ;
 int set_ih_free_space (int ,int ) ;

__attribute__((used)) static void balance_leaf_paste_right_shift(struct tree_balance *tb,
         struct item_head * const ih,
         const char * const body)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 int n_shift, n_rem, r_zeroes_number, version;
 unsigned long temp_rem;
 const char *r_body;
 struct buffer_info bi;


 if (is_direntry_le_ih(item_head(tbS0, tb->item_pos))) {
  balance_leaf_paste_right_shift_dirent(tb, ih, body);
  return;
 }







 n_shift = tb->rbytes - tb->insert_size[0];
 if (n_shift < 0)
  n_shift = 0;

 RFALSE(tb->pos_in_item != ih_item_len(item_head(tbS0, tb->item_pos)),
        "PAP-12155: invalid position to paste. ih_item_len=%d, "
        "pos_in_item=%d", tb->pos_in_item,
        ih_item_len(item_head(tbS0, tb->item_pos)));

 leaf_shift_right(tb, tb->rnum[0], n_shift);





 n_rem = tb->insert_size[0] - tb->rbytes;
 if (n_rem < 0)
  n_rem = 0;

 temp_rem = n_rem;

 version = ih_version(item_head(tb->R[0], 0));

 if (is_indirect_le_key(version, leaf_key(tb->R[0], 0))) {
  int shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
  temp_rem = n_rem << shift;
 }

 add_le_key_k_offset(version, leaf_key(tb->R[0], 0), temp_rem);
 add_le_key_k_offset(version, internal_key(tb->CFR[0], tb->rkey[0]),
       temp_rem);

 do_balance_mark_internal_dirty(tb, tb->CFR[0], 0);


 buffer_info_init_right(tb, &bi);
 if (n_rem > tb->zeroes_num) {
  r_zeroes_number = 0;
  r_body = body + n_rem - tb->zeroes_num;
 } else {
  r_body = body;
  r_zeroes_number = tb->zeroes_num - n_rem;
  tb->zeroes_num -= r_zeroes_number;
 }

 leaf_paste_in_buffer(&bi, 0, n_shift, tb->insert_size[0] - n_rem,
        r_body, r_zeroes_number);

 if (is_indirect_le_ih(item_head(tb->R[0], 0)))
  set_ih_free_space(item_head(tb->R[0], 0), 0);

 tb->insert_size[0] = n_rem;
 if (!n_rem)
  tb->pos_in_item++;
}

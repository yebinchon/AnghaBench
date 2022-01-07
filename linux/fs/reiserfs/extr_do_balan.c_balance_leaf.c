
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree_balance {scalar_t__* insert_size; int* lnum; int lbytes; int* blknum; int tb_sb; scalar_t__* CFL; int * rkey; scalar_t__* CFR; int * lkey; int * rnum; int item_pos; int pos_in_item; scalar_t__ zeroes_num; TYPE_1__* tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int pos_in_item; } ;


 int M_INSERT ;
 int M_PASTE ;
 int PATH_LAST_POSITION (TYPE_1__*) ;
 struct buffer_head* PATH_PLAST_BUFFER (TYPE_1__*) ;
 int PROC_INFO_INC (int ,int ) ;
 int RFALSE (int,char*,...) ;
 int UNFM_P_SIZE ;
 int * balance_at ;
 int balance_leaf_finish_node (struct tree_balance*,struct item_head*,char const*,int) ;
 int balance_leaf_left (struct tree_balance*,struct item_head*,char const*,int) ;
 int balance_leaf_new_nodes (struct tree_balance*,struct item_head*,char const*,struct item_head*,struct buffer_head**,int) ;
 int balance_leaf_right (struct tree_balance*,struct item_head*,char const*,int) ;
 int balance_leaf_when_delete (struct tree_balance*,int) ;
 int copy_key (int ,int ) ;
 int do_balance_mark_internal_dirty (struct tree_balance*,scalar_t__,int ) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 int internal_key (scalar_t__,int ) ;
 scalar_t__ is_indirect_le_ih (int ) ;
 int item_head (struct buffer_head*,int ) ;
 int print_cur_tb (char*) ;
 int reiserfs_invalidate_buffer (struct tree_balance*,struct buffer_head*) ;
 int reiserfs_panic (int ,char*,char*,...) ;

__attribute__((used)) static int balance_leaf(struct tree_balance *tb, struct item_head *ih,
   const char *body, int flag,
   struct item_head *insert_key,
   struct buffer_head **insert_ptr)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);

 PROC_INFO_INC(tb->tb_sb, balance_at[0]);


 if (tb->insert_size[0] < 0)
  return balance_leaf_when_delete(tb, flag);

 tb->item_pos = PATH_LAST_POSITION(tb->tb_path),
 tb->pos_in_item = tb->tb_path->pos_in_item,
 tb->zeroes_num = 0;
 if (flag == M_INSERT && !body)
  tb->zeroes_num = ih_item_len(ih);





 if (flag != M_INSERT
     && is_indirect_le_ih(item_head(tbS0, tb->item_pos)))
  tb->pos_in_item *= UNFM_P_SIZE;

 body += balance_leaf_left(tb, ih, body, flag);



 tb->item_pos -= (tb->lnum[0] - ((tb->lbytes != -1) ? 1 : 0));

 balance_leaf_right(tb, ih, body, flag);


 RFALSE(tb->blknum[0] > 3,
        "PAP-12180: blknum can not be %d. It must be <= 3", tb->blknum[0]);
 RFALSE(tb->blknum[0] < 0,
        "PAP-12185: blknum can not be %d. It must be >= 0", tb->blknum[0]);






 if (tb->blknum[0] == 0) {

  RFALSE(!tb->lnum[0] || !tb->rnum[0],
         "PAP-12190: lnum and rnum must not be zero");





  if (tb->CFL[0]) {
   if (!tb->CFR[0])
    reiserfs_panic(tb->tb_sb, "vs-12195",
            "CFR not initialized");
   copy_key(internal_key(tb->CFL[0], tb->lkey[0]),
     internal_key(tb->CFR[0], tb->rkey[0]));
   do_balance_mark_internal_dirty(tb, tb->CFL[0], 0);
  }

  reiserfs_invalidate_buffer(tb, tbS0);
  return 0;
 }

 balance_leaf_new_nodes(tb, ih, body, insert_key, insert_ptr, flag);

 balance_leaf_finish_node(tb, ih, body, flag);
 return 0;
}

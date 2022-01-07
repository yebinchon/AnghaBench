
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree_balance {int vn_buf; TYPE_1__** used; int transaction_handle; TYPE_1__** FEB; TYPE_1__** CFR; TYPE_1__** CFL; TYPE_1__** FR; TYPE_1__** FL; TYPE_1__** R; TYPE_1__** L; int tb_sb; int tb_path; } ;
typedef int b_blocknr_t ;
struct TYPE_3__ {int b_blocknr; } ;


 int MAX_FEB_SIZE ;
 int MAX_HEIGHT ;
 int brelse (TYPE_1__*) ;
 int kfree (int ) ;
 int pathrelse_and_restore (int ,int ) ;
 int reiserfs_free_block (int ,int *,int ,int ) ;
 int reiserfs_restore_prepared_buffer (int ,TYPE_1__*) ;

void unfix_nodes(struct tree_balance *tb)
{
 int i;


 pathrelse_and_restore(tb->tb_sb, tb->tb_path);


 for (i = 0; i < MAX_HEIGHT; i++) {
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->L[i]);
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->R[i]);
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->FL[i]);
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->FR[i]);
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->CFL[i]);
  reiserfs_restore_prepared_buffer(tb->tb_sb, tb->CFR[i]);

  brelse(tb->L[i]);
  brelse(tb->R[i]);
  brelse(tb->FL[i]);
  brelse(tb->FR[i]);
  brelse(tb->CFL[i]);
  brelse(tb->CFR[i]);
 }


 for (i = 0; i < MAX_FEB_SIZE; i++) {
  if (tb->FEB[i]) {
   b_blocknr_t blocknr = tb->FEB[i]->b_blocknr;




   brelse(tb->FEB[i]);
   reiserfs_free_block(tb->transaction_handle, ((void*)0),
         blocknr, 0);
  }
  if (tb->used[i]) {

   brelse(tb->used[i]);
  }
 }

 kfree(tb->vn_buf);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int* FR; int* blknum; int* rnum; scalar_t__* lnum; int tb_path; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ B_LEVEL (int) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 scalar_t__ DISK_LEAF_NODE_LEVEL ;
 int M_CUT ;
 int M_DELETE ;
 int PATH_H_PPARENT (int ,int ) ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*,...) ;
 int balance_leaf_when_delete_cut (struct tree_balance*) ;
 int balance_leaf_when_delete_del (struct tree_balance*) ;
 int balance_leaf_when_delete_left (struct tree_balance*) ;
 int buffer_info_init_tbS0 (struct tree_balance*,struct buffer_info*) ;
 int leaf_shift_right (struct tree_balance*,int,int) ;
 int reiserfs_invalidate_buffer (struct tree_balance*,struct buffer_head*) ;

__attribute__((used)) static int balance_leaf_when_delete(struct tree_balance *tb, int flag)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct buffer_info bi;
 int n;

 RFALSE(tb->FR[0] && B_LEVEL(tb->FR[0]) != DISK_LEAF_NODE_LEVEL + 1,
        "vs- 12000: level: wrong FR %z", tb->FR[0]);
 RFALSE(tb->blknum[0] > 1,
        "PAP-12005: tb->blknum == %d, can not be > 1", tb->blknum[0]);
 RFALSE(!tb->blknum[0] && !PATH_H_PPARENT(tb->tb_path, 0),
        "PAP-12010: tree can not be empty");

 buffer_info_init_tbS0(tb, &bi);



 BUG_ON(flag != M_DELETE && flag != M_CUT);
 if (flag == M_DELETE)
  balance_leaf_when_delete_del(tb);
 else
  balance_leaf_when_delete_cut(tb);






 n = B_NR_ITEMS(tbS0);



 if (tb->lnum[0])
  return balance_leaf_when_delete_left(tb);

 if (tb->rnum[0] == -1) {

  leaf_shift_right(tb, n, -1);
  reiserfs_invalidate_buffer(tb, tbS0);
  return 0;
 }

 RFALSE(tb->rnum[0],
        "PAP-12065: bad rnum parameter must be 0 (%d)", tb->rnum[0]);
 return 0;
}

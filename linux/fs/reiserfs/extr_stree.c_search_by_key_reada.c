
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int b_blocknr_t ;


 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int ,int,struct buffer_head**) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;

__attribute__((used)) static int search_by_key_reada(struct super_block *s,
    struct buffer_head **bh,
    b_blocknr_t *b, int num)
{
 int i, j;
 int depth = -1;

 for (i = 0; i < num; i++) {
  bh[i] = sb_getblk(s, b[i]);
 }







 for (j = 0; j < i; j++) {





  if (!buffer_uptodate(bh[j])) {
   if (depth == -1)
    depth = reiserfs_write_unlock_nested(s);
   ll_rw_block(REQ_OP_READ, REQ_RAHEAD, 1, bh + j);
  }
  brelse(bh[j]);
 }
 return depth;
}

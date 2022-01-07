
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
struct TYPE_7__ {int bh; int key; } ;
typedef TYPE_1__ Indirect ;


 int DEPTH ;
 int EAGAIN ;
 int EIO ;
 int SYSV_SB (struct super_block*) ;
 int alloc_branch (struct inode*,int,int*,TYPE_1__*) ;
 int block_to_cpu (int ,int ) ;
 int block_to_path (struct inode*,int ,int*) ;
 int brelse (int ) ;
 TYPE_1__* get_branch (struct inode*,int,int*,TYPE_1__*,int*) ;
 int map_bh (struct buffer_head*,struct super_block*,int ) ;
 int pointers_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_buffer_new (struct buffer_head*) ;
 scalar_t__ splice_branch (struct inode*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int get_block(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
 int err = -EIO;
 int offsets[DEPTH];
 Indirect chain[DEPTH];
 struct super_block *sb = inode->i_sb;
 Indirect *partial;
 int left;
 int depth = block_to_path(inode, iblock, offsets);

 if (depth == 0)
  goto out;

reread:
 read_lock(&pointers_lock);
 partial = get_branch(inode, depth, offsets, chain, &err);
 read_unlock(&pointers_lock);


 if (!partial) {
got_it:
  map_bh(bh_result, sb, block_to_cpu(SYSV_SB(sb),
     chain[depth-1].key));

  partial = chain+depth-1;
  goto cleanup;
 }


 if (!create || err == -EIO) {
cleanup:
  while (partial > chain) {
   brelse(partial->bh);
   partial--;
  }
out:
  return err;
 }






 if (err == -EAGAIN)
  goto changed;

 left = (chain + depth) - partial;
 err = alloc_branch(inode, left, offsets+(partial-chain), partial);
 if (err)
  goto cleanup;

 if (splice_branch(inode, chain, partial, left) < 0)
  goto changed;

 set_buffer_new(bh_result);
 goto got_it;

changed:
 while (partial > chain) {
  brelse(partial->bh);
  partial--;
 }
 goto reread;
}

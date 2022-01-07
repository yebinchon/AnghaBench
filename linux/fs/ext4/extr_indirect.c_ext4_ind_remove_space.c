
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct inode {TYPE_7__* i_sb; } ;
struct ext4_inode_info {scalar_t__* i_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef scalar_t__ __le32 ;
struct TYPE_14__ {unsigned int s_blocksize; } ;
struct TYPE_13__ {unsigned int s_bitmap_maxbytes; } ;
struct TYPE_12__ {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_11__ {TYPE_2__* bh; scalar_t__* p; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (TYPE_2__*,char*) ;
 int BUG_ON (int) ;
 int EXT4_ADDR_PER_BLOCK (TYPE_7__*) ;
 unsigned int EXT4_BLOCK_SIZE_BITS (TYPE_7__*) ;

 struct ext4_inode_info* EXT4_I (struct inode*) ;

 int EXT4_NDIR_BLOCKS ;
 TYPE_6__* EXT4_SB (TYPE_7__*) ;

 int brelse (TYPE_2__*) ;
 int ext4_block_to_path (struct inode*,int,int*,int *) ;
 TYPE_1__* ext4_find_shared (struct inode*,int,int*,TYPE_1__*,scalar_t__*) ;
 int ext4_free_branches (int *,struct inode*,TYPE_2__*,scalar_t__*,scalar_t__*,int) ;
 int ext4_free_data (int *,struct inode*,int *,scalar_t__*,scalar_t__*) ;
 int min (int,int) ;

int ext4_ind_remove_space(handle_t *handle, struct inode *inode,
     ext4_lblk_t start, ext4_lblk_t end)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 __le32 *i_data = ei->i_data;
 int addr_per_block = EXT4_ADDR_PER_BLOCK(inode->i_sb);
 ext4_lblk_t offsets[4], offsets2[4];
 Indirect chain[4], chain2[4];
 Indirect *partial, *partial2;
 Indirect *p = ((void*)0), *p2 = ((void*)0);
 ext4_lblk_t max_block;
 __le32 nr = 0, nr2 = 0;
 int n = 0, n2 = 0;
 unsigned blocksize = inode->i_sb->s_blocksize;

 max_block = (EXT4_SB(inode->i_sb)->s_bitmap_maxbytes + blocksize-1)
     >> EXT4_BLOCK_SIZE_BITS(inode->i_sb);
 if (end >= max_block)
  end = max_block;
 if ((start >= end) || (start > max_block))
  return 0;

 n = ext4_block_to_path(inode, start, offsets, ((void*)0));
 n2 = ext4_block_to_path(inode, end, offsets2, ((void*)0));

 BUG_ON(n > n2);

 if ((n == 1) && (n == n2)) {

  ext4_free_data(handle, inode, ((void*)0), i_data + offsets[0],
          i_data + offsets2[0]);
  return 0;
 } else if (n2 > n) {







  if (n == 1) {




   ext4_free_data(handle, inode, ((void*)0), i_data + offsets[0],
           i_data + EXT4_NDIR_BLOCKS);
   goto end_range;
  }


  partial = p = ext4_find_shared(inode, n, offsets, chain, &nr);
  if (nr) {
   if (partial == chain) {

    ext4_free_branches(handle, inode, ((void*)0),
        &nr, &nr+1, (chain+n-1) - partial);
    *partial->p = 0;
   } else {

    BUFFER_TRACE(partial->bh, "get_write_access");
    ext4_free_branches(handle, inode, partial->bh,
     partial->p,
     partial->p+1, (chain+n-1) - partial);
   }
  }





  while (partial > chain) {
   ext4_free_branches(handle, inode, partial->bh,
    partial->p + 1,
    (__le32 *)partial->bh->b_data+addr_per_block,
    (chain+n-1) - partial);
   partial--;
  }

end_range:
  partial2 = p2 = ext4_find_shared(inode, n2, offsets2, chain2, &nr2);
  if (nr2) {
   if (partial2 == chain2) {






    goto do_indirects;
   }
  } else {






   partial2->p++;
  }





  while (partial2 > chain2) {
   ext4_free_branches(handle, inode, partial2->bh,
        (__le32 *)partial2->bh->b_data,
        partial2->p,
        (chain2+n2-1) - partial2);
   partial2--;
  }
  goto do_indirects;
 }


 partial = p = ext4_find_shared(inode, n, offsets, chain, &nr);
 partial2 = p2 = ext4_find_shared(inode, n2, offsets2, chain2, &nr2);


 if (nr) {
  int level = min(partial - chain, partial2 - chain2);
  int i;
  int subtree = 1;

  for (i = 0; i <= level; i++) {
   if (offsets[i] != offsets2[i]) {
    subtree = 0;
    break;
   }
  }

  if (!subtree) {
   if (partial == chain) {

    ext4_free_branches(handle, inode, ((void*)0),
         &nr, &nr+1,
         (chain+n-1) - partial);
    *partial->p = 0;
   } else {

    BUFFER_TRACE(partial->bh, "get_write_access");
    ext4_free_branches(handle, inode, partial->bh,
         partial->p,
         partial->p+1,
         (chain+n-1) - partial);
   }
  }
 }

 if (!nr2) {






  partial2->p++;
 }

 while (partial > chain || partial2 > chain2) {
  int depth = (chain+n-1) - partial;
  int depth2 = (chain2+n2-1) - partial2;

  if (partial > chain && partial2 > chain2 &&
      partial->bh->b_blocknr == partial2->bh->b_blocknr) {




   ext4_free_branches(handle, inode, partial->bh,
        partial->p + 1,
        partial2->p,
        (chain+n-1) - partial);
   goto cleanup;
  }
  if (partial > chain && depth <= depth2) {
   ext4_free_branches(handle, inode, partial->bh,
        partial->p + 1,
        (__le32 *)partial->bh->b_data+addr_per_block,
        (chain+n-1) - partial);
   partial--;
  }
  if (partial2 > chain2 && depth2 <= depth) {
   ext4_free_branches(handle, inode, partial2->bh,
        (__le32 *)partial2->bh->b_data,
        partial2->p,
        (chain2+n2-1) - partial2);
   partial2--;
  }
 }

cleanup:
 while (p && p > chain) {
  BUFFER_TRACE(p->bh, "call brelse");
  brelse(p->bh);
  p--;
 }
 while (p2 && p2 > chain2) {
  BUFFER_TRACE(p2->bh, "call brelse");
  brelse(p2->bh);
  p2--;
 }
 return 0;

do_indirects:

 switch (offsets[0]) {
 default:
  if (++n >= n2)
   break;
  nr = i_data[129];
  if (nr) {
   ext4_free_branches(handle, inode, ((void*)0), &nr, &nr+1, 1);
   i_data[129] = 0;
  }

 case 129:
  if (++n >= n2)
   break;
  nr = i_data[130];
  if (nr) {
   ext4_free_branches(handle, inode, ((void*)0), &nr, &nr+1, 2);
   i_data[130] = 0;
  }

 case 130:
  if (++n >= n2)
   break;
  nr = i_data[128];
  if (nr) {
   ext4_free_branches(handle, inode, ((void*)0), &nr, &nr+1, 3);
   i_data[128] = 0;
  }

 case 128:
  ;
 }
 goto cleanup;
}

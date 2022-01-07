
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct the_nilfs {int ns_blocksize_bits; int ns_blocks_per_segment; int ns_blocksize; int ns_bdev; scalar_t__ ns_nsegments; } ;
struct nilfs_segment_usage {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct fstrim_range {int len; int minlen; int start; } ;
struct buffer_head {int b_page; } ;
typedef int sector_t ;
struct TYPE_4__ {size_t mi_entry_size; int mi_sem; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 int EINVAL ;
 int ENOENT ;
 int GFP_NOFS ;
 TYPE_2__* NILFS_MDT (struct inode*) ;
 int bdev_logical_block_size (int ) ;
 int blkdev_issue_discard (int ,int,int,int ,int ) ;
 int down_read (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int nilfs_get_segment_range (struct the_nilfs*,int,int*,int*) ;
 int nilfs_get_segnum_of_block (struct the_nilfs*,int) ;
 int nilfs_segment_usage_clean (struct nilfs_segment_usage*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,int,struct buffer_head*,void*) ;
 int nilfs_sufile_get_segment_usage_block (struct inode*,int,int ,struct buffer_head**) ;
 size_t nilfs_sufile_segment_usages_in_block (struct inode*,int,int) ;
 int put_bh (struct buffer_head*) ;
 int up_read (int *) ;

int nilfs_sufile_trim_fs(struct inode *sufile, struct fstrim_range *range)
{
 struct the_nilfs *nilfs = sufile->i_sb->s_fs_info;
 struct buffer_head *su_bh;
 struct nilfs_segment_usage *su;
 void *kaddr;
 size_t n, i, susz = NILFS_MDT(sufile)->mi_entry_size;
 sector_t seg_start, seg_end, start_block, end_block;
 sector_t start = 0, nblocks = 0;
 u64 segnum, segnum_end, minlen, len, max_blocks, ndiscarded = 0;
 int ret = 0;
 unsigned int sects_per_block;

 sects_per_block = (1 << nilfs->ns_blocksize_bits) /
   bdev_logical_block_size(nilfs->ns_bdev);
 len = range->len >> nilfs->ns_blocksize_bits;
 minlen = range->minlen >> nilfs->ns_blocksize_bits;
 max_blocks = ((u64)nilfs->ns_nsegments * nilfs->ns_blocks_per_segment);

 if (!len || range->start >= max_blocks << nilfs->ns_blocksize_bits)
  return -EINVAL;

 start_block = (range->start + nilfs->ns_blocksize - 1) >>
   nilfs->ns_blocksize_bits;






 if (max_blocks - start_block < len)
  end_block = max_blocks - 1;
 else
  end_block = start_block + len - 1;

 segnum = nilfs_get_segnum_of_block(nilfs, start_block);
 segnum_end = nilfs_get_segnum_of_block(nilfs, end_block);

 down_read(&NILFS_MDT(sufile)->mi_sem);

 while (segnum <= segnum_end) {
  n = nilfs_sufile_segment_usages_in_block(sufile, segnum,
    segnum_end);

  ret = nilfs_sufile_get_segment_usage_block(sufile, segnum, 0,
          &su_bh);
  if (ret < 0) {
   if (ret != -ENOENT)
    goto out_sem;

   segnum += n;
   continue;
  }

  kaddr = kmap_atomic(su_bh->b_page);
  su = nilfs_sufile_block_get_segment_usage(sufile, segnum,
    su_bh, kaddr);
  for (i = 0; i < n; ++i, ++segnum, su = (void *)su + susz) {
   if (!nilfs_segment_usage_clean(su))
    continue;

   nilfs_get_segment_range(nilfs, segnum, &seg_start,
      &seg_end);

   if (!nblocks) {

    start = seg_start;
    nblocks = seg_end - seg_start + 1;
    continue;
   }

   if (start + nblocks == seg_start) {

    nblocks += seg_end - seg_start + 1;
    continue;
   }


   if (start < start_block) {
    nblocks -= start_block - start;
    start = start_block;
   }

   if (nblocks >= minlen) {
    kunmap_atomic(kaddr);

    ret = blkdev_issue_discard(nilfs->ns_bdev,
      start * sects_per_block,
      nblocks * sects_per_block,
      GFP_NOFS, 0);
    if (ret < 0) {
     put_bh(su_bh);
     goto out_sem;
    }

    ndiscarded += nblocks;
    kaddr = kmap_atomic(su_bh->b_page);
    su = nilfs_sufile_block_get_segment_usage(
     sufile, segnum, su_bh, kaddr);
   }


   start = seg_start;
   nblocks = seg_end - seg_start + 1;
  }
  kunmap_atomic(kaddr);
  put_bh(su_bh);
 }


 if (nblocks) {

  if (start < start_block) {
   nblocks -= start_block - start;
   start = start_block;
  }
  if (start + nblocks > end_block + 1)
   nblocks = end_block - start + 1;

  if (nblocks >= minlen) {
   ret = blkdev_issue_discard(nilfs->ns_bdev,
     start * sects_per_block,
     nblocks * sects_per_block,
     GFP_NOFS, 0);
   if (!ret)
    ndiscarded += nblocks;
  }
 }

out_sem:
 up_read(&NILFS_MDT(sufile)->mi_sem);

 range->len = ndiscarded << nilfs->ns_blocksize_bits;
 return ret;
}

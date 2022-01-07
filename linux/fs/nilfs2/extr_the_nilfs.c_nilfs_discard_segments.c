
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocksize_bits; int ns_bdev; } ;
typedef scalar_t__ sector_t ;
typedef int __u64 ;


 int GFP_NOFS ;
 int bdev_logical_block_size (int ) ;
 int blkdev_issue_discard (int ,scalar_t__,scalar_t__,int ,int ) ;
 int nilfs_get_segment_range (struct the_nilfs*,int ,scalar_t__*,scalar_t__*) ;

int nilfs_discard_segments(struct the_nilfs *nilfs, __u64 *segnump,
       size_t nsegs)
{
 sector_t seg_start, seg_end;
 sector_t start = 0, nblocks = 0;
 unsigned int sects_per_block;
 __u64 *sn;
 int ret = 0;

 sects_per_block = (1 << nilfs->ns_blocksize_bits) /
  bdev_logical_block_size(nilfs->ns_bdev);
 for (sn = segnump; sn < segnump + nsegs; sn++) {
  nilfs_get_segment_range(nilfs, *sn, &seg_start, &seg_end);

  if (!nblocks) {
   start = seg_start;
   nblocks = seg_end - seg_start + 1;
  } else if (start + nblocks == seg_start) {
   nblocks += seg_end - seg_start + 1;
  } else {
   ret = blkdev_issue_discard(nilfs->ns_bdev,
         start * sects_per_block,
         nblocks * sects_per_block,
         GFP_NOFS, 0);
   if (ret < 0)
    return ret;
   nblocks = 0;
  }
 }
 if (nblocks)
  ret = blkdev_issue_discard(nilfs->ns_bdev,
        start * sects_per_block,
        nblocks * sects_per_block,
        GFP_NOFS, 0);
 return ret;
}

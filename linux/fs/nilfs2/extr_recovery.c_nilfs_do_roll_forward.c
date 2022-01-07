
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct the_nilfs {scalar_t__ ns_ctime; scalar_t__ ns_nongc_ctime; } ;
struct super_block {int dummy; } ;
struct nilfs_segment_summary {int ss_nblocks; int ss_create; int ss_next; int ss_flags; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_recovery_info {scalar_t__ ri_lsegs_start; scalar_t__ ri_segnum; scalar_t__ ri_pseg_start; scalar_t__ ri_lsegs_end; int ri_need_recovery; int ri_lsegs_start_seq; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;


 int EINVAL ;
 int EIO ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LIST_HEAD (int ) ;
 int NILFS_RECOVERY_ROLLFORWARD_DONE ;
 int NILFS_SEG_FAIL_IO ;
 unsigned int NILFS_SS_GC ;
 unsigned int NILFS_SS_LOGBGN ;
 unsigned int NILFS_SS_LOGEND ;
 unsigned int NILFS_SS_SR ;
 unsigned int NILFS_SS_SYNDT ;
 int brelse (struct buffer_head*) ;
 int dispose_recovery_list (int *) ;
 int dsync_blocks ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_get_segment_range (struct the_nilfs*,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ nilfs_get_segnum_of_block (struct the_nilfs*,scalar_t__) ;
 int nilfs_msg (struct super_block*,int ,char*,int,...) ;
 struct buffer_head* nilfs_read_log_header (struct the_nilfs*,scalar_t__,struct nilfs_segment_summary**) ;
 int nilfs_recover_dsync_blocks (struct the_nilfs*,struct super_block*,struct nilfs_root*,int *,unsigned long*) ;
 int nilfs_scan_dsync_log (struct the_nilfs*,scalar_t__,struct nilfs_segment_summary*,int *) ;
 int nilfs_validate_log (struct the_nilfs*,int ,struct buffer_head*,struct nilfs_segment_summary*) ;
 int unlikely (int) ;

__attribute__((used)) static int nilfs_do_roll_forward(struct the_nilfs *nilfs,
     struct super_block *sb,
     struct nilfs_root *root,
     struct nilfs_recovery_info *ri)
{
 struct buffer_head *bh_sum = ((void*)0);
 struct nilfs_segment_summary *sum = ((void*)0);
 sector_t pseg_start;
 sector_t seg_start, seg_end;
 unsigned long nsalvaged_blocks = 0;
 unsigned int flags;
 u64 seg_seq;
 __u64 segnum, nextnum = 0;
 int empty_seg = 0;
 int err = 0, ret;
 LIST_HEAD(dsync_blocks);
 enum {
  RF_INIT_ST,
  RF_DSYNC_ST,
 };
 int state = RF_INIT_ST;

 pseg_start = ri->ri_lsegs_start;
 seg_seq = ri->ri_lsegs_start_seq;
 segnum = nilfs_get_segnum_of_block(nilfs, pseg_start);
 nilfs_get_segment_range(nilfs, segnum, &seg_start, &seg_end);

 while (segnum != ri->ri_segnum || pseg_start <= ri->ri_pseg_start) {
  brelse(bh_sum);
  bh_sum = nilfs_read_log_header(nilfs, pseg_start, &sum);
  if (!bh_sum) {
   err = -EIO;
   goto failed;
  }

  ret = nilfs_validate_log(nilfs, seg_seq, bh_sum, sum);
  if (ret) {
   if (ret == NILFS_SEG_FAIL_IO) {
    err = -EIO;
    goto failed;
   }
   goto strayed;
  }

  flags = le16_to_cpu(sum->ss_flags);
  if (flags & NILFS_SS_SR)
   goto confused;


  nextnum = nilfs_get_segnum_of_block(nilfs,
          le64_to_cpu(sum->ss_next));
  empty_seg = 0;
  nilfs->ns_ctime = le64_to_cpu(sum->ss_create);
  if (!(flags & NILFS_SS_GC))
   nilfs->ns_nongc_ctime = nilfs->ns_ctime;

  switch (state) {
  case RF_INIT_ST:
   if (!(flags & NILFS_SS_LOGBGN) ||
       !(flags & NILFS_SS_SYNDT))
    goto try_next_pseg;
   state = RF_DSYNC_ST;

  case RF_DSYNC_ST:
   if (!(flags & NILFS_SS_SYNDT))
    goto confused;

   err = nilfs_scan_dsync_log(nilfs, pseg_start, sum,
         &dsync_blocks);
   if (unlikely(err))
    goto failed;
   if (flags & NILFS_SS_LOGEND) {
    err = nilfs_recover_dsync_blocks(
     nilfs, sb, root, &dsync_blocks,
     &nsalvaged_blocks);
    if (unlikely(err))
     goto failed;
    state = RF_INIT_ST;
   }
   break;
  }

 try_next_pseg:
  if (pseg_start == ri->ri_lsegs_end)
   break;
  pseg_start += le32_to_cpu(sum->ss_nblocks);
  if (pseg_start < seg_end)
   continue;
  goto feed_segment;

 strayed:
  if (pseg_start == ri->ri_lsegs_end)
   break;

 feed_segment:

  if (empty_seg++)
   break;
  seg_seq++;
  segnum = nextnum;
  nilfs_get_segment_range(nilfs, segnum, &seg_start, &seg_end);
  pseg_start = seg_start;
 }

 if (nsalvaged_blocks) {
  nilfs_msg(sb, KERN_INFO, "salvaged %lu blocks",
     nsalvaged_blocks);
  ri->ri_need_recovery = NILFS_RECOVERY_ROLLFORWARD_DONE;
 }
 out:
 brelse(bh_sum);
 dispose_recovery_list(&dsync_blocks);
 return err;

 confused:
 err = -EINVAL;
 failed:
 nilfs_msg(sb, KERN_ERR,
    "error %d roll-forwarding partial segment at blocknr = %llu",
    err, (unsigned long long)pseg_start);
 goto out;
}

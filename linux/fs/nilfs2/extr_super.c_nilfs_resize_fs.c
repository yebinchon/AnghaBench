
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {scalar_t__ ns_blocksize_bits; scalar_t__ ns_nsegments; int ns_sufile; int ns_sem; int ns_sbsize; int ns_segctor_sem; int ns_blocks_per_segment; } ;
struct super_block {TYPE_1__* s_bdev; struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {void* s_nsegments; void* s_dev_size; int s_state; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int bd_inode; } ;


 int EIO ;
 int ERANGE ;
 int NILFS_RESIZE_FS ;
 scalar_t__ NILFS_SB2_OFFSET_BYTES (scalar_t__) ;
 int NILFS_SB_COMMIT_ALL ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le64 (scalar_t__) ;
 int do_div (scalar_t__,int ) ;
 int down_write (int *) ;
 scalar_t__ i_size_read (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (struct nilfs_super_block**) ;
 int memcpy (struct nilfs_super_block*,struct nilfs_super_block*,int ) ;
 int nilfs_commit_super (struct super_block*,int ) ;
 int nilfs_construct_segment (struct super_block*) ;
 int nilfs_move_2nd_super (struct super_block*,scalar_t__) ;
 struct nilfs_super_block** nilfs_prepare_super (struct super_block*,int ) ;
 int nilfs_set_log_cursor (struct nilfs_super_block*,struct the_nilfs*) ;
 int nilfs_sufile_resize (int ,scalar_t__) ;
 int nilfs_sufile_set_alloc_range (int ,int ,scalar_t__) ;
 int up_write (int *) ;

int nilfs_resize_fs(struct super_block *sb, __u64 newsize)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp;
 __u64 devsize, newnsegs;
 loff_t sb2off;
 int ret;

 ret = -ERANGE;
 devsize = i_size_read(sb->s_bdev->bd_inode);
 if (newsize > devsize)
  goto out;






 down_write(&nilfs->ns_segctor_sem);

 sb2off = NILFS_SB2_OFFSET_BYTES(newsize);
 newnsegs = sb2off >> nilfs->ns_blocksize_bits;
 do_div(newnsegs, nilfs->ns_blocks_per_segment);

 ret = nilfs_sufile_resize(nilfs->ns_sufile, newnsegs);
 up_write(&nilfs->ns_segctor_sem);
 if (ret < 0)
  goto out;

 ret = nilfs_construct_segment(sb);
 if (ret < 0)
  goto out;

 down_write(&nilfs->ns_sem);
 nilfs_move_2nd_super(sb, sb2off);
 ret = -EIO;
 sbp = nilfs_prepare_super(sb, 0);
 if (likely(sbp)) {
  nilfs_set_log_cursor(sbp[0], nilfs);





  sbp[0]->s_state = cpu_to_le16(le16_to_cpu(sbp[0]->s_state) &
           ~NILFS_RESIZE_FS);
  sbp[0]->s_dev_size = cpu_to_le64(newsize);
  sbp[0]->s_nsegments = cpu_to_le64(nilfs->ns_nsegments);
  if (sbp[1])
   memcpy(sbp[1], sbp[0], nilfs->ns_sbsize);
  ret = nilfs_commit_super(sb, NILFS_SB_COMMIT_ALL);
 }
 up_write(&nilfs->ns_sem);







 if (!ret)
  nilfs_sufile_set_alloc_range(nilfs->ns_sufile, 0, newnsegs - 1);
out:
 return ret;
}

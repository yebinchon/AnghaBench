
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned int ns_inode_size; int ns_dat; int ns_cpfile; int ns_nongc_ctime; int ns_sufile; int ns_sem; struct nilfs_super_block** ns_sbp; } ;
struct super_block {int dummy; } ;
struct nilfs_super_root {int sr_nongc_ctime; } ;
struct nilfs_super_block {int s_segment_usage_size; int s_checkpoint_size; int s_dat_entry_size; } ;
struct nilfs_inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;


 int NILFS_SR_CPFILE_OFFSET (unsigned int) ;
 int NILFS_SR_DAT_OFFSET (unsigned int) ;
 int NILFS_SR_SUFILE_OFFSET (unsigned int) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 int iput (int ) ;
 unsigned int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int nilfs_cpfile_read (struct super_block*,unsigned int,struct nilfs_inode*,int *) ;
 int nilfs_dat_read (struct super_block*,unsigned int,struct nilfs_inode*,int *) ;
 int nilfs_read_super_root_block (struct the_nilfs*,int ,struct buffer_head**,int) ;
 int nilfs_sufile_read (struct super_block*,unsigned int,struct nilfs_inode*,int *) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static int nilfs_load_super_root(struct the_nilfs *nilfs,
     struct super_block *sb, sector_t sr_block)
{
 struct buffer_head *bh_sr;
 struct nilfs_super_root *raw_sr;
 struct nilfs_super_block **sbp = nilfs->ns_sbp;
 struct nilfs_inode *rawi;
 unsigned int dat_entry_size, segment_usage_size, checkpoint_size;
 unsigned int inode_size;
 int err;

 err = nilfs_read_super_root_block(nilfs, sr_block, &bh_sr, 1);
 if (unlikely(err))
  return err;

 down_read(&nilfs->ns_sem);
 dat_entry_size = le16_to_cpu(sbp[0]->s_dat_entry_size);
 checkpoint_size = le16_to_cpu(sbp[0]->s_checkpoint_size);
 segment_usage_size = le16_to_cpu(sbp[0]->s_segment_usage_size);
 up_read(&nilfs->ns_sem);

 inode_size = nilfs->ns_inode_size;

 rawi = (void *)bh_sr->b_data + NILFS_SR_DAT_OFFSET(inode_size);
 err = nilfs_dat_read(sb, dat_entry_size, rawi, &nilfs->ns_dat);
 if (err)
  goto failed;

 rawi = (void *)bh_sr->b_data + NILFS_SR_CPFILE_OFFSET(inode_size);
 err = nilfs_cpfile_read(sb, checkpoint_size, rawi, &nilfs->ns_cpfile);
 if (err)
  goto failed_dat;

 rawi = (void *)bh_sr->b_data + NILFS_SR_SUFILE_OFFSET(inode_size);
 err = nilfs_sufile_read(sb, segment_usage_size, rawi,
    &nilfs->ns_sufile);
 if (err)
  goto failed_cpfile;

 raw_sr = (struct nilfs_super_root *)bh_sr->b_data;
 nilfs->ns_nongc_ctime = le64_to_cpu(raw_sr->sr_nongc_ctime);

 failed:
 brelse(bh_sr);
 return err;

 failed_cpfile:
 iput(nilfs->ns_cpfile);

 failed_dat:
 iput(nilfs->ns_dat);
 goto failed;
}

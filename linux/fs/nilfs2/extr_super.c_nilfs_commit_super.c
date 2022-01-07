
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct the_nilfs {int ns_flushed_device; int ns_sbsize; int ns_crc_seed; int ns_sbwtime; struct nilfs_super_block** ns_sbp; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {void* s_sum; int s_wtime; } ;


 int NILFS_SB_COMMIT_ALL ;
 int clear_nilfs_sb_dirty (struct the_nilfs*) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int crc32_le (int ,unsigned char*,int ) ;
 int ktime_get_real_seconds () ;
 int nilfs_sync_super (struct super_block*,int) ;
 int smp_wmb () ;

int nilfs_commit_super(struct super_block *sb, int flag)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_super_block **sbp = nilfs->ns_sbp;
 time64_t t;


 t = ktime_get_real_seconds();
 nilfs->ns_sbwtime = t;
 sbp[0]->s_wtime = cpu_to_le64(t);
 sbp[0]->s_sum = 0;
 sbp[0]->s_sum = cpu_to_le32(crc32_le(nilfs->ns_crc_seed,
          (unsigned char *)sbp[0],
          nilfs->ns_sbsize));
 if (flag == NILFS_SB_COMMIT_ALL && sbp[1]) {
  sbp[1]->s_wtime = sbp[0]->s_wtime;
  sbp[1]->s_sum = 0;
  sbp[1]->s_sum = cpu_to_le32(crc32_le(nilfs->ns_crc_seed,
         (unsigned char *)sbp[1],
         nilfs->ns_sbsize));
 }
 clear_nilfs_sb_dirty(nilfs);
 nilfs->ns_flushed_device = 1;

 smp_wmb();
 return nilfs_sync_super(sb, flag);
}

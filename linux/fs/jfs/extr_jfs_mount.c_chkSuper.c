
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jfs_superblock {int s_version; int s_bsize; int s_flag; int s_state; int s_logdev; int s_ait2; int s_fsckpxd; int s_loguuid; int s_uuid; int s_logpxd; int s_l2bsize; int s_aim2; int s_size; int s_magic; } ;
struct jfs_sb_info {int mntflag; int bsize; int l2bsize; int nbperpage; int ait2; int fsckpxd; int loguuid; int uuid; int logdev; int logpxd; scalar_t__ l2niperblk; scalar_t__ l2nbperpage; scalar_t__ state; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int s64 ;
typedef int s32 ;


 int EINVAL ;
 int FM_CLEAN ;
 int JFS_BAD_SAIT ;
 int JFS_GROUPCOMMIT ;
 int JFS_INLINELOG ;
 int JFS_MAGIC ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 scalar_t__ JFS_VERSION ;
 scalar_t__ L2DISIZE ;
 scalar_t__ L2PSIZE ;
 int PSIZE ;
 int addressPXD (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int jfs_err (char*) ;
 int jfs_info (char*,scalar_t__,scalar_t__,unsigned long long) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int lengthPXD (int *) ;
 int new_decode_dev (scalar_t__) ;
 int readSuper (struct super_block*,struct buffer_head**) ;
 int sb_rdonly (struct super_block*) ;
 scalar_t__ strncmp (int ,int ,int) ;
 int uuid_copy (int *,int *) ;

__attribute__((used)) static int chkSuper(struct super_block *sb)
{
 int rc = 0;
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_superblock *j_sb;
 struct buffer_head *bh;
 int AIM_bytesize, AIT_bytesize;
 int expected_AIM_bytesize, expected_AIT_bytesize;
 s64 AIM_byte_addr, AIT_byte_addr, fsckwsp_addr;
 s64 byte_addr_diff0, byte_addr_diff1;
 s32 bsize;

 if ((rc = readSuper(sb, &bh)))
  return rc;
 j_sb = (struct jfs_superblock *)bh->b_data;





 if (strncmp(j_sb->s_magic, JFS_MAGIC, 4) ||
     le32_to_cpu(j_sb->s_version) > JFS_VERSION) {
  rc = -EINVAL;
  goto out;
 }

 bsize = le32_to_cpu(j_sb->s_bsize);
 jfs_info("superblock: flag:0x%08x state:0x%08x size:0x%Lx",
   le32_to_cpu(j_sb->s_flag), le32_to_cpu(j_sb->s_state),
   (unsigned long long) le64_to_cpu(j_sb->s_size));


 if ((j_sb->s_flag & cpu_to_le32(JFS_BAD_SAIT)) !=
     cpu_to_le32(JFS_BAD_SAIT)) {
  expected_AIM_bytesize = 2 * PSIZE;
  AIM_bytesize = lengthPXD(&(j_sb->s_aim2)) * bsize;
  expected_AIT_bytesize = 4 * PSIZE;
  AIT_bytesize = lengthPXD(&(j_sb->s_ait2)) * bsize;
  AIM_byte_addr = addressPXD(&(j_sb->s_aim2)) * bsize;
  AIT_byte_addr = addressPXD(&(j_sb->s_ait2)) * bsize;
  byte_addr_diff0 = AIT_byte_addr - AIM_byte_addr;
  fsckwsp_addr = addressPXD(&(j_sb->s_fsckpxd)) * bsize;
  byte_addr_diff1 = fsckwsp_addr - AIT_byte_addr;
  if ((AIM_bytesize != expected_AIM_bytesize) ||
      (AIT_bytesize != expected_AIT_bytesize) ||
      (byte_addr_diff0 != AIM_bytesize) ||
      (byte_addr_diff1 <= AIT_bytesize))
   j_sb->s_flag |= cpu_to_le32(JFS_BAD_SAIT);
 }

 if ((j_sb->s_flag & cpu_to_le32(JFS_GROUPCOMMIT)) !=
     cpu_to_le32(JFS_GROUPCOMMIT))
  j_sb->s_flag |= cpu_to_le32(JFS_GROUPCOMMIT);


 if (j_sb->s_state != cpu_to_le32(FM_CLEAN) &&
     !sb_rdonly(sb)) {
  jfs_err("jfs_mount: Mount Failure: File System Dirty.");
  rc = -EINVAL;
  goto out;
 }

 sbi->state = le32_to_cpu(j_sb->s_state);
 sbi->mntflag = le32_to_cpu(j_sb->s_flag);





 sbi->bsize = bsize;
 sbi->l2bsize = le16_to_cpu(j_sb->s_l2bsize);





 sbi->nbperpage = PSIZE >> sbi->l2bsize;
 sbi->l2nbperpage = L2PSIZE - sbi->l2bsize;
 sbi->l2niperblk = sbi->l2bsize - L2DISIZE;
 if (sbi->mntflag & JFS_INLINELOG)
  sbi->logpxd = j_sb->s_logpxd;
 else {
  sbi->logdev = new_decode_dev(le32_to_cpu(j_sb->s_logdev));
  uuid_copy(&sbi->uuid, &j_sb->s_uuid);
  uuid_copy(&sbi->loguuid, &j_sb->s_loguuid);
 }
 sbi->fsckpxd = j_sb->s_fsckpxd;
 sbi->ait2 = j_sb->s_ait2;

      out:
 brelse(bh);
 return rc;
}

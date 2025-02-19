
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
typedef int u64 ;
struct TYPE_6__ {void* t_tid; } ;
typedef TYPE_2__ transaction_t ;
typedef void* tid_t ;
struct super_block {int dummy; } ;
struct inode {int i_state; int i_mode; scalar_t__ i_nlink; unsigned long i_generation; char* i_link; struct super_block* i_sb; int * i_op; int i_size; int * i_fop; int i_blocks; int i_ino; } ;
struct ext4_sb_info {int s_mount_state; void* s_csum_seed; TYPE_1__* s_es; TYPE_3__* s_journal; } ;
struct ext4_inode_info {int i_extra_isize; unsigned long i_dtime; unsigned long i_flags; unsigned long i_file_acl; scalar_t__* i_data; void* i_datasync_tid; void* i_sync_tid; int i_orphan; int i_last_alloc_group; int i_block_group; scalar_t__ i_reserved_quota; int i_disksize; scalar_t__ i_dir_start_lookup; scalar_t__ i_inline_off; int i_projid; void* i_csum_seed; } ;
struct ext4_inode {scalar_t__ i_links_count; scalar_t__ i_mode; scalar_t__ i_extra_isize; scalar_t__ i_uid_low; scalar_t__ i_gid_low; scalar_t__ i_uid_high; scalar_t__ i_gid_high; scalar_t__ i_file_acl_high; scalar_t__* i_block; scalar_t__ i_version_hi; scalar_t__ i_disk_version; scalar_t__ i_generation; scalar_t__ i_file_acl_lo; scalar_t__ i_flags; scalar_t__ i_dtime; scalar_t__ i_projid; } ;
struct ext4_iloc {int * bh; int block_group; } ;
typedef scalar_t__ projid_t ;
typedef int loff_t ;
struct TYPE_7__ {int j_state_lock; void* j_commit_sequence; TYPE_2__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef TYPE_3__ journal_t ;
typedef int inum ;
typedef int gid_t ;
typedef int gen ;
typedef int ext4_iget_flags ;
typedef int __u8 ;
typedef int __u64 ;
typedef void* __u32 ;
typedef scalar_t__ __le32 ;
struct TYPE_8__ {int comm; } ;
struct TYPE_5__ {scalar_t__ s_inodes_count; } ;


 int BUILD_BUG_ON (int) ;
 long EFSBADCRC ;
 long EFSCORRUPTED ;
 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 long ESTALE ;
 unsigned long EXT4_BOOT_LOADER_INO ;
 scalar_t__ EXT4_DEF_PROJID ;
 int EXT4_EINODE_GET_XTIME (int ,struct ext4_inode_info*,struct ext4_inode*) ;
 unsigned long EXT4_FIRST_INO (struct super_block*) ;
 scalar_t__ EXT4_FITS_IN_INODE (struct ext4_inode*,struct ext4_inode_info*,scalar_t__) ;
 int EXT4_GOOD_OLD_INODE_SIZE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_IGET_HANDLE ;
 int EXT4_IGET_SPECIAL ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_INODE_GET_XTIME (int ,struct inode*,struct ext4_inode*) ;
 int EXT4_INODE_SIZE (struct super_block*) ;
 int EXT4_N_BLOCKS ;
 int EXT4_ORPHAN_FS ;
 unsigned long EXT4_ROOT_INO ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int HURD_COMPAT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int I_NEW ;
 int NO_UID32 ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 scalar_t__ S_ISSOCK (int) ;
 int __ext4_error (struct super_block*,char const*,unsigned int,char*,unsigned long,int ) ;
 long __ext4_get_inode_loc (struct inode*,struct ext4_iloc*,int ) ;
 int brelse (int *) ;
 scalar_t__ cpu_to_le32 (int ) ;
 TYPE_4__* current ;
 void* ext4_chksum (struct ext4_sb_info*,void*,int *,int) ;
 int ext4_clear_state_flags (struct ext4_inode_info*) ;
 int ext4_data_block_valid (struct ext4_sb_info*,int,int) ;
 int ext4_dir_inode_operations ;
 int ext4_dir_operations ;
 int ext4_encrypted_symlink_inode_operations ;
 int ext4_error_inode (struct inode*,char const*,unsigned int,int ,char*,...) ;
 long ext4_ext_check_inode (struct inode*) ;
 int ext4_fast_symlink_inode_operations ;
 int ext4_file_inode_operations ;
 int ext4_file_operations ;
 scalar_t__ ext4_has_feature_64bit (struct super_block*) ;
 int ext4_has_feature_casefold (struct super_block*) ;
 scalar_t__ ext4_has_feature_project (struct super_block*) ;
 int ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_has_metadata_csum (struct super_block*) ;
 long ext4_iget_extra_inode (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ;
 long ext4_ind_check_inode (struct inode*) ;
 int ext4_inode_blocks (struct ext4_inode*,struct ext4_inode_info*) ;
 int ext4_inode_csum_verify (struct inode*,struct ext4_inode*,struct ext4_inode_info*) ;
 scalar_t__ ext4_inode_is_fast_symlink (struct inode*) ;
 int ext4_inode_set_iversion_queried (struct inode*,int) ;
 int ext4_isize (struct super_block*,struct ext4_inode*) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_set_aops (struct inode*) ;
 int ext4_set_inode_flags (struct inode*) ;
 int ext4_special_inode_operations ;
 int ext4_symlink_inode_operations ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int i_atime ;
 int i_crtime ;
 int i_ctime ;
 int i_gid_write (struct inode*,int) ;
 int i_mtime ;
 int i_size_read (struct inode*) ;
 int i_uid_write (struct inode*,int) ;
 scalar_t__ i_version_hi ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,int,int ) ;
 int init_user_ns ;
 int inode_nohighmem (struct inode*) ;
 int le16_to_cpu (scalar_t__) ;
 unsigned long le32_to_cpu (scalar_t__) ;
 scalar_t__ likely (int) ;
 int make_bad_inode (struct inode*) ;
 int make_kprojid (int *,scalar_t__) ;
 int nd_terminate_link (scalar_t__*,int ,int) ;
 int new_decode_dev (unsigned long) ;
 int old_decode_dev (unsigned long) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_nlink (struct inode*,int) ;
 int test_opt (struct super_block*,int ) ;
 int test_opt2 (struct super_block*,int ) ;
 int unlock_new_inode (struct inode*) ;

struct inode *__ext4_iget(struct super_block *sb, unsigned long ino,
     ext4_iget_flags flags, const char *function,
     unsigned int line)
{
 struct ext4_iloc iloc;
 struct ext4_inode *raw_inode;
 struct ext4_inode_info *ei;
 struct inode *inode;
 journal_t *journal = EXT4_SB(sb)->s_journal;
 long ret;
 loff_t size;
 int block;
 uid_t i_uid;
 gid_t i_gid;
 projid_t i_projid;

 if ((!(flags & EXT4_IGET_SPECIAL) &&
      (ino < EXT4_FIRST_INO(sb) && ino != EXT4_ROOT_INO)) ||
     (ino < EXT4_ROOT_INO) ||
     (ino > le32_to_cpu(EXT4_SB(sb)->s_es->s_inodes_count))) {
  if (flags & EXT4_IGET_HANDLE)
   return ERR_PTR(-ESTALE);
  __ext4_error(sb, function, line,
        "inode #%lu: comm %s: iget: illegal inode #",
        ino, current->comm);
  return ERR_PTR(-EFSCORRUPTED);
 }

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 ei = EXT4_I(inode);
 iloc.bh = ((void*)0);

 ret = __ext4_get_inode_loc(inode, &iloc, 0);
 if (ret < 0)
  goto bad_inode;
 raw_inode = ext4_raw_inode(&iloc);

 if ((ino == EXT4_ROOT_INO) && (raw_inode->i_links_count == 0)) {
  ext4_error_inode(inode, function, line, 0,
     "iget: root inode unallocated");
  ret = -EFSCORRUPTED;
  goto bad_inode;
 }

 if ((flags & EXT4_IGET_HANDLE) &&
     (raw_inode->i_links_count == 0) && (raw_inode->i_mode == 0)) {
  ret = -ESTALE;
  goto bad_inode;
 }

 if (EXT4_INODE_SIZE(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
  ei->i_extra_isize = le16_to_cpu(raw_inode->i_extra_isize);
  if (EXT4_GOOD_OLD_INODE_SIZE + ei->i_extra_isize >
   EXT4_INODE_SIZE(inode->i_sb) ||
      (ei->i_extra_isize & 3)) {
   ext4_error_inode(inode, function, line, 0,
      "iget: bad extra_isize %u "
      "(inode size %u)",
      ei->i_extra_isize,
      EXT4_INODE_SIZE(inode->i_sb));
   ret = -EFSCORRUPTED;
   goto bad_inode;
  }
 } else
  ei->i_extra_isize = 0;


 if (ext4_has_metadata_csum(sb)) {
  struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
  __u32 csum;
  __le32 inum = cpu_to_le32(inode->i_ino);
  __le32 gen = raw_inode->i_generation;
  csum = ext4_chksum(sbi, sbi->s_csum_seed, (__u8 *)&inum,
       sizeof(inum));
  ei->i_csum_seed = ext4_chksum(sbi, csum, (__u8 *)&gen,
           sizeof(gen));
 }

 if (!ext4_inode_csum_verify(inode, raw_inode, ei)) {
  ext4_error_inode(inode, function, line, 0,
     "iget: checksum invalid");
  ret = -EFSBADCRC;
  goto bad_inode;
 }

 inode->i_mode = le16_to_cpu(raw_inode->i_mode);
 i_uid = (uid_t)le16_to_cpu(raw_inode->i_uid_low);
 i_gid = (gid_t)le16_to_cpu(raw_inode->i_gid_low);
 if (ext4_has_feature_project(sb) &&
     EXT4_INODE_SIZE(sb) > EXT4_GOOD_OLD_INODE_SIZE &&
     EXT4_FITS_IN_INODE(raw_inode, ei, i_projid))
  i_projid = (projid_t)le32_to_cpu(raw_inode->i_projid);
 else
  i_projid = EXT4_DEF_PROJID;

 if (!(test_opt(inode->i_sb, NO_UID32))) {
  i_uid |= le16_to_cpu(raw_inode->i_uid_high) << 16;
  i_gid |= le16_to_cpu(raw_inode->i_gid_high) << 16;
 }
 i_uid_write(inode, i_uid);
 i_gid_write(inode, i_gid);
 ei->i_projid = make_kprojid(&init_user_ns, i_projid);
 set_nlink(inode, le16_to_cpu(raw_inode->i_links_count));

 ext4_clear_state_flags(ei);
 ei->i_inline_off = 0;
 ei->i_dir_start_lookup = 0;
 ei->i_dtime = le32_to_cpu(raw_inode->i_dtime);





 if (inode->i_nlink == 0) {
  if ((inode->i_mode == 0 ||
       !(EXT4_SB(inode->i_sb)->s_mount_state & EXT4_ORPHAN_FS)) &&
      ino != EXT4_BOOT_LOADER_INO) {

   ret = -ESTALE;
   goto bad_inode;
  }






 }
 ei->i_flags = le32_to_cpu(raw_inode->i_flags);
 ext4_set_inode_flags(inode);
 inode->i_blocks = ext4_inode_blocks(raw_inode, ei);
 ei->i_file_acl = le32_to_cpu(raw_inode->i_file_acl_lo);
 if (ext4_has_feature_64bit(sb))
  ei->i_file_acl |=
   ((__u64)le16_to_cpu(raw_inode->i_file_acl_high)) << 32;
 inode->i_size = ext4_isize(sb, raw_inode);
 if ((size = i_size_read(inode)) < 0) {
  ext4_error_inode(inode, function, line, 0,
     "iget: bad i_size value: %lld", size);
  ret = -EFSCORRUPTED;
  goto bad_inode;
 }
 ei->i_disksize = inode->i_size;



 inode->i_generation = le32_to_cpu(raw_inode->i_generation);
 ei->i_block_group = iloc.block_group;
 ei->i_last_alloc_group = ~0;




 for (block = 0; block < EXT4_N_BLOCKS; block++)
  ei->i_data[block] = raw_inode->i_block[block];
 INIT_LIST_HEAD(&ei->i_orphan);
 if (journal) {
  transaction_t *transaction;
  tid_t tid;

  read_lock(&journal->j_state_lock);
  if (journal->j_running_transaction)
   transaction = journal->j_running_transaction;
  else
   transaction = journal->j_committing_transaction;
  if (transaction)
   tid = transaction->t_tid;
  else
   tid = journal->j_commit_sequence;
  read_unlock(&journal->j_state_lock);
  ei->i_sync_tid = tid;
  ei->i_datasync_tid = tid;
 }

 if (EXT4_INODE_SIZE(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
  if (ei->i_extra_isize == 0) {

   BUILD_BUG_ON(sizeof(struct ext4_inode) & 3);
   ei->i_extra_isize = sizeof(struct ext4_inode) -
         EXT4_GOOD_OLD_INODE_SIZE;
  } else {
   ret = ext4_iget_extra_inode(inode, raw_inode, ei);
   if (ret)
    goto bad_inode;
  }
 }

 EXT4_INODE_GET_XTIME(i_ctime, inode, raw_inode);
 EXT4_INODE_GET_XTIME(i_mtime, inode, raw_inode);
 EXT4_INODE_GET_XTIME(i_atime, inode, raw_inode);
 EXT4_EINODE_GET_XTIME(i_crtime, ei, raw_inode);

 if (likely(!test_opt2(inode->i_sb, HURD_COMPAT))) {
  u64 ivers = le32_to_cpu(raw_inode->i_disk_version);

  if (EXT4_INODE_SIZE(inode->i_sb) > EXT4_GOOD_OLD_INODE_SIZE) {
   if (EXT4_FITS_IN_INODE(raw_inode, ei, i_version_hi))
    ivers |=
      (__u64)(le32_to_cpu(raw_inode->i_version_hi)) << 32;
  }
  ext4_inode_set_iversion_queried(inode, ivers);
 }

 ret = 0;
 if (ei->i_file_acl &&
     !ext4_data_block_valid(EXT4_SB(sb), ei->i_file_acl, 1)) {
  ext4_error_inode(inode, function, line, 0,
     "iget: bad extended attribute block %llu",
     ei->i_file_acl);
  ret = -EFSCORRUPTED;
  goto bad_inode;
 } else if (!ext4_has_inline_data(inode)) {

  if (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
     (S_ISLNK(inode->i_mode) &&
      !ext4_inode_is_fast_symlink(inode))) {
   if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
    ret = ext4_ext_check_inode(inode);
   else
    ret = ext4_ind_check_inode(inode);
  }
 }
 if (ret)
  goto bad_inode;

 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &ext4_file_inode_operations;
  inode->i_fop = &ext4_file_operations;
  ext4_set_aops(inode);
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &ext4_dir_inode_operations;
  inode->i_fop = &ext4_dir_operations;
 } else if (S_ISLNK(inode->i_mode)) {

  if (IS_APPEND(inode) || IS_IMMUTABLE(inode)) {
   ext4_error_inode(inode, function, line, 0,
      "iget: immutable or append flags "
      "not allowed on symlinks");
   ret = -EFSCORRUPTED;
   goto bad_inode;
  }
  if (IS_ENCRYPTED(inode)) {
   inode->i_op = &ext4_encrypted_symlink_inode_operations;
   ext4_set_aops(inode);
  } else if (ext4_inode_is_fast_symlink(inode)) {
   inode->i_link = (char *)ei->i_data;
   inode->i_op = &ext4_fast_symlink_inode_operations;
   nd_terminate_link(ei->i_data, inode->i_size,
    sizeof(ei->i_data) - 1);
  } else {
   inode->i_op = &ext4_symlink_inode_operations;
   ext4_set_aops(inode);
  }
  inode_nohighmem(inode);
 } else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
       S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
  inode->i_op = &ext4_special_inode_operations;
  if (raw_inode->i_block[0])
   init_special_inode(inode, inode->i_mode,
      old_decode_dev(le32_to_cpu(raw_inode->i_block[0])));
  else
   init_special_inode(inode, inode->i_mode,
      new_decode_dev(le32_to_cpu(raw_inode->i_block[1])));
 } else if (ino == EXT4_BOOT_LOADER_INO) {
  make_bad_inode(inode);
 } else {
  ret = -EFSCORRUPTED;
  ext4_error_inode(inode, function, line, 0,
     "iget: bogus i_mode (%o)", inode->i_mode);
  goto bad_inode;
 }
 if (IS_CASEFOLDED(inode) && !ext4_has_feature_casefold(inode->i_sb))
  ext4_error_inode(inode, function, line, 0,
     "casefold flag without casefold feature");
 brelse(iloc.bh);

 unlock_new_inode(inode);
 return inode;

bad_inode:
 brelse(iloc.bh);
 iget_failed(inode);
 return ERR_PTR(ret);
}

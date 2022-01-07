
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct udf_sb_info {int s_flags; int s_session; int s_last_block; size_t s_partition; int * s_lvid_bh; int s_vat_inode; int s_volume_ident; int s_record_time; TYPE_1__* s_partmaps; int s_partitions; scalar_t__ s_udfrev; int s_cred_lock; int * s_nls_map; void* s_dmode; void* s_fmode; scalar_t__ s_umask; int s_gid; int s_uid; int s_alloc_mutex; } ;
struct udf_options {int flags; int session; int blocksize; int * nls_map; void* dmode; void* fmode; scalar_t__ umask; int gid; int uid; } ;
struct timestamp {int typeAndTimezone; int minute; int hour; int day; int month; int year; } ;
struct super_block {int s_time_gran; struct udf_sb_info* s_fs_info; int s_max_links; int s_maxbytes; int s_root; int s_bdev; int s_magic; int * s_export_op; int * s_op; } ;
struct logicalVolIntegrityDescImpUse {int minUDFWriteRev; int minUDFReadRev; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int s_partition_flags; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 int PTR_ERR (struct inode*) ;
 int UDF_FLAG_BLOCKSIZE_SET ;
 int UDF_FLAG_NLS_MAP ;
 int UDF_FLAG_RW_INCOMPAT ;
 int UDF_FLAG_STRICT ;
 int UDF_FLAG_USE_AD_IN_ICB ;
 int UDF_FLAG_USE_EXTENDED_FE ;
 int UDF_FLAG_USE_STREAMS ;
 int UDF_FLAG_UTF8 ;
 void* UDF_INVALID_MODE ;
 int UDF_MAX_LINKS ;
 scalar_t__ UDF_MAX_READ_VERSION ;
 scalar_t__ UDF_MAX_WRITE_VERSION ;
 int UDF_PART_FLAG_READ_ONLY ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 int UDF_SUPER_MAGIC ;
 scalar_t__ UDF_VERS_USE_EXTENDED_FE ;
 scalar_t__ UDF_VERS_USE_STREAMS ;
 int bdev_logical_block_size (int ) ;
 int brelse (int *) ;
 int current_user_ns () ;
 int d_make_root (struct inode*) ;
 int iput (int ) ;
 int kfree (struct udf_sb_info*) ;
 struct udf_sb_info* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int * load_nls_default () ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int mutex_init (int *) ;
 int overflowgid ;
 int overflowuid ;
 int pr_notice (char*,int) ;
 int rwlock_init (int *) ;
 int sb_rdonly (struct super_block*) ;
 int udf_close_lvid (struct super_block*) ;
 int udf_debug (char*,...) ;
 int udf_err (struct super_block*,char*,...) ;
 int udf_export_ops ;
 int udf_find_fileset (struct super_block*,struct kernel_lb_addr*,struct kernel_lb_addr*) ;
 int udf_get_last_session (struct super_block*) ;
 struct inode* udf_iget (struct super_block*,struct kernel_lb_addr*) ;
 int udf_info (char*,int ,scalar_t__,int ,int ,int ,int ,scalar_t__) ;
 int udf_load_vrs (struct super_block*,struct udf_options*,int,struct kernel_lb_addr*) ;
 int udf_open_lvid (struct super_block*) ;
 int udf_parse_options (char*,struct udf_options*,int) ;
 int udf_sb_free_partitions (struct super_block*) ;
 struct logicalVolIntegrityDescImpUse* udf_sb_lvidiu (struct super_block*) ;
 int udf_sb_ops ;
 int udf_time_to_disk_stamp (struct timestamp*,int ) ;
 int udf_warn (struct super_block*,char*) ;
 int unload_nls (int *) ;

__attribute__((used)) static int udf_fill_super(struct super_block *sb, void *options, int silent)
{
 int ret = -EINVAL;
 struct inode *inode = ((void*)0);
 struct udf_options uopt;
 struct kernel_lb_addr rootdir, fileset;
 struct udf_sb_info *sbi;
 bool lvid_open = 0;

 uopt.flags = (1 << UDF_FLAG_USE_AD_IN_ICB) | (1 << UDF_FLAG_STRICT);

 uopt.uid = make_kuid(current_user_ns(), overflowuid);
 uopt.gid = make_kgid(current_user_ns(), overflowgid);
 uopt.umask = 0;
 uopt.fmode = UDF_INVALID_MODE;
 uopt.dmode = UDF_INVALID_MODE;
 uopt.nls_map = ((void*)0);

 sbi = kzalloc(sizeof(*sbi), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;

 sb->s_fs_info = sbi;

 mutex_init(&sbi->s_alloc_mutex);

 if (!udf_parse_options((char *)options, &uopt, 0))
  goto parse_options_failure;

 if (uopt.flags & (1 << UDF_FLAG_UTF8) &&
     uopt.flags & (1 << UDF_FLAG_NLS_MAP)) {
  udf_err(sb, "utf8 cannot be combined with iocharset\n");
  goto parse_options_failure;
 }
 if ((uopt.flags & (1 << UDF_FLAG_NLS_MAP)) && !uopt.nls_map) {
  uopt.nls_map = load_nls_default();
  if (!uopt.nls_map)
   uopt.flags &= ~(1 << UDF_FLAG_NLS_MAP);
  else
   udf_debug("Using default NLS map\n");
 }
 if (!(uopt.flags & (1 << UDF_FLAG_NLS_MAP)))
  uopt.flags |= (1 << UDF_FLAG_UTF8);

 fileset.logicalBlockNum = 0xFFFFFFFF;
 fileset.partitionReferenceNum = 0xFFFF;

 sbi->s_flags = uopt.flags;
 sbi->s_uid = uopt.uid;
 sbi->s_gid = uopt.gid;
 sbi->s_umask = uopt.umask;
 sbi->s_fmode = uopt.fmode;
 sbi->s_dmode = uopt.dmode;
 sbi->s_nls_map = uopt.nls_map;
 rwlock_init(&sbi->s_cred_lock);

 if (uopt.session == 0xFFFFFFFF)
  sbi->s_session = udf_get_last_session(sb);
 else
  sbi->s_session = uopt.session;

 udf_debug("Multi-session=%d\n", sbi->s_session);


 sb->s_op = &udf_sb_ops;
 sb->s_export_op = &udf_export_ops;

 sb->s_magic = UDF_SUPER_MAGIC;
 sb->s_time_gran = 1000;

 if (uopt.flags & (1 << UDF_FLAG_BLOCKSIZE_SET)) {
  ret = udf_load_vrs(sb, &uopt, silent, &fileset);
 } else {
  uopt.blocksize = bdev_logical_block_size(sb->s_bdev);
  while (uopt.blocksize <= 4096) {
   ret = udf_load_vrs(sb, &uopt, silent, &fileset);
   if (ret < 0) {
    if (!silent && ret != -EACCES) {
     pr_notice("Scanning with blocksize %u failed\n",
        uopt.blocksize);
    }
    brelse(sbi->s_lvid_bh);
    sbi->s_lvid_bh = ((void*)0);




    if (ret == -EACCES)
     break;
   } else
    break;

   uopt.blocksize <<= 1;
  }
 }
 if (ret < 0) {
  if (ret == -EAGAIN) {
   udf_warn(sb, "No partition found (1)\n");
   ret = -EINVAL;
  }
  goto error_out;
 }

 udf_debug("Lastblock=%u\n", sbi->s_last_block);

 if (sbi->s_lvid_bh) {
  struct logicalVolIntegrityDescImpUse *lvidiu =
       udf_sb_lvidiu(sb);
  uint16_t minUDFReadRev;
  uint16_t minUDFWriteRev;

  if (!lvidiu) {
   ret = -EINVAL;
   goto error_out;
  }
  minUDFReadRev = le16_to_cpu(lvidiu->minUDFReadRev);
  minUDFWriteRev = le16_to_cpu(lvidiu->minUDFWriteRev);
  if (minUDFReadRev > UDF_MAX_READ_VERSION) {
   udf_err(sb, "minUDFReadRev=%x (max is %x)\n",
    minUDFReadRev,
    UDF_MAX_READ_VERSION);
   ret = -EINVAL;
   goto error_out;
  } else if (minUDFWriteRev > UDF_MAX_WRITE_VERSION) {
   if (!sb_rdonly(sb)) {
    ret = -EACCES;
    goto error_out;
   }
   UDF_SET_FLAG(sb, UDF_FLAG_RW_INCOMPAT);
  }

  sbi->s_udfrev = minUDFWriteRev;

  if (minUDFReadRev >= UDF_VERS_USE_EXTENDED_FE)
   UDF_SET_FLAG(sb, UDF_FLAG_USE_EXTENDED_FE);
  if (minUDFReadRev >= UDF_VERS_USE_STREAMS)
   UDF_SET_FLAG(sb, UDF_FLAG_USE_STREAMS);
 }

 if (!sbi->s_partitions) {
  udf_warn(sb, "No partition found (2)\n");
  ret = -EINVAL;
  goto error_out;
 }

 if (sbi->s_partmaps[sbi->s_partition].s_partition_flags &
   UDF_PART_FLAG_READ_ONLY) {
  if (!sb_rdonly(sb)) {
   ret = -EACCES;
   goto error_out;
  }
  UDF_SET_FLAG(sb, UDF_FLAG_RW_INCOMPAT);
 }

 ret = udf_find_fileset(sb, &fileset, &rootdir);
 if (ret < 0) {
  udf_warn(sb, "No fileset found\n");
  goto error_out;
 }

 if (!silent) {
  struct timestamp ts;
  udf_time_to_disk_stamp(&ts, sbi->s_record_time);
  udf_info("Mounting volume '%s', timestamp %04u/%02u/%02u %02u:%02u (%x)\n",
    sbi->s_volume_ident,
    le16_to_cpu(ts.year), ts.month, ts.day,
    ts.hour, ts.minute, le16_to_cpu(ts.typeAndTimezone));
 }
 if (!sb_rdonly(sb)) {
  udf_open_lvid(sb);
  lvid_open = 1;
 }




 inode = udf_iget(sb, &rootdir);
 if (IS_ERR(inode)) {
  udf_err(sb, "Error in udf_iget, block=%u, partition=%u\n",
         rootdir.logicalBlockNum, rootdir.partitionReferenceNum);
  ret = PTR_ERR(inode);
  goto error_out;
 }


 sb->s_root = d_make_root(inode);
 if (!sb->s_root) {
  udf_err(sb, "Couldn't allocate root dentry\n");
  ret = -ENOMEM;
  goto error_out;
 }
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_max_links = UDF_MAX_LINKS;
 return 0;

error_out:
 iput(sbi->s_vat_inode);
parse_options_failure:
 if (uopt.nls_map)
  unload_nls(uopt.nls_map);
 if (lvid_open)
  udf_close_lvid(sb);
 brelse(sbi->s_lvid_bh);
 udf_sb_free_partitions(sb);
 kfree(sbi);
 sb->s_fs_info = ((void*)0);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_quota_types; int s_time_gran; int * s_fs_info; int * s_root; scalar_t__ s_blocksize_bits; int s_maxbytes; int * s_qcop; int s_xattr; int * s_export_op; int * s_d_op; int * s_op; int s_magic; int s_flags; } ;
struct TYPE_7__ {int ls_jid; } ;
struct gfs2_args {int ar_statfs_quantum; scalar_t__ ar_spectator; int ar_quota_quantum; int ar_commit; scalar_t__ ar_nobarrier; scalar_t__ ar_posix_acl; } ;
struct TYPE_6__ {int gt_statfs_slow; int gt_statfs_quantum; int gt_quota_quantum; int gt_logd_secs; } ;
struct TYPE_5__ {scalar_t__ sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {char* sd_table_name; int sd_journal_ready; int * sd_master_dir; int * sd_root_dir; TYPE_3__ sd_lockstruct; int sd_fsname; struct gfs2_args sd_args; TYPE_2__ sd_tune; scalar_t__ sd_fsb2bb_shift; int sd_fsb2bb; TYPE_1__ sd_sb; int sd_flags; } ;
struct gfs2_holder {int dummy; } ;
struct fs_context {int sb_flags; struct gfs2_args* fs_private; } ;
struct TYPE_8__ {int flags; } ;


 int BIT (scalar_t__) ;
 int DO ;
 int DQUOT_QUOTA_SYS_FILE ;
 int ENOMEM ;
 int GFS2_BASIC_BLOCK ;
 scalar_t__ GFS2_BASIC_BLOCK_SHIFT ;
 int GFS2_MAGIC ;
 int MAX_LFS_FILESIZE ;
 int QTYPE_MASK_GRP ;
 int QTYPE_MASK_USR ;
 int SB_NOSEC ;
 int SB_POSIXACL ;
 int SB_RDONLY ;
 int SB_SILENT ;
 int SDF_NOBARRIERS ;
 int SDF_RORECOVERY ;
 int UNDO ;
 int complete_all (int *) ;
 int dput (int *) ;
 int free_sbd (struct gfs2_sbd*) ;
 int fs_err (struct gfs2_sbd*,char*,int) ;
 int gfs2_create_debugfs_file (struct gfs2_sbd*) ;
 int gfs2_delete_debugfs_file (struct gfs2_sbd*) ;
 int gfs2_dops ;
 int gfs2_export_ops ;
 int gfs2_gl_hash_clear (struct gfs2_sbd*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_lm_mount (struct gfs2_sbd*,int) ;
 int gfs2_lm_unmount (struct gfs2_sbd*) ;
 int gfs2_make_fs_rw (struct gfs2_sbd*) ;
 int gfs2_online_uevent (struct gfs2_sbd*) ;
 int gfs2_quotactl_ops ;
 int gfs2_statfs_init (struct gfs2_sbd*) ;
 int gfs2_super_ops ;
 int gfs2_sys_fs_add (struct gfs2_sbd*) ;
 int gfs2_sys_fs_del (struct gfs2_sbd*) ;
 int gfs2_xattr_handlers ;
 int init_inodes (struct gfs2_sbd*,int ) ;
 int init_locking (struct gfs2_sbd*,struct gfs2_holder*,int ) ;
 int init_names (struct gfs2_sbd*,int) ;
 int init_per_node (struct gfs2_sbd*,int ) ;
 int init_sb (struct gfs2_sbd*,int) ;
 struct gfs2_sbd* init_sbd (struct super_block*) ;
 int pr_warn (char*) ;
 TYPE_4__* sb_dqopt (struct super_block*) ;
 int sb_min_blocksize (struct super_block*,int ) ;
 int sb_rdonly (struct super_block*) ;
 int set_bit (int ,int *) ;
 int snprintf (int ,int,char*,char*,...) ;
 int wait_on_journal (struct gfs2_sbd*) ;

__attribute__((used)) static int gfs2_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct gfs2_args *args = fc->fs_private;
 int silent = fc->sb_flags & SB_SILENT;
 struct gfs2_sbd *sdp;
 struct gfs2_holder mount_gh;
 int error;

 sdp = init_sbd(sb);
 if (!sdp) {
  pr_warn("can't alloc struct gfs2_sbd\n");
  return -ENOMEM;
 }
 sdp->sd_args = *args;

 if (sdp->sd_args.ar_spectator) {
                sb->s_flags |= SB_RDONLY;
  set_bit(SDF_RORECOVERY, &sdp->sd_flags);
 }
 if (sdp->sd_args.ar_posix_acl)
  sb->s_flags |= SB_POSIXACL;
 if (sdp->sd_args.ar_nobarrier)
  set_bit(SDF_NOBARRIERS, &sdp->sd_flags);

 sb->s_flags |= SB_NOSEC;
 sb->s_magic = GFS2_MAGIC;
 sb->s_op = &gfs2_super_ops;
 sb->s_d_op = &gfs2_dops;
 sb->s_export_op = &gfs2_export_ops;
 sb->s_xattr = gfs2_xattr_handlers;
 sb->s_qcop = &gfs2_quotactl_ops;
 sb->s_quota_types = QTYPE_MASK_USR | QTYPE_MASK_GRP;
 sb_dqopt(sb)->flags |= DQUOT_QUOTA_SYS_FILE;
 sb->s_time_gran = 1;
 sb->s_maxbytes = MAX_LFS_FILESIZE;



 sdp->sd_sb.sb_bsize = sb_min_blocksize(sb, GFS2_BASIC_BLOCK);
 sdp->sd_sb.sb_bsize_shift = sb->s_blocksize_bits;
 sdp->sd_fsb2bb_shift = sdp->sd_sb.sb_bsize_shift -
                               GFS2_BASIC_BLOCK_SHIFT;
 sdp->sd_fsb2bb = BIT(sdp->sd_fsb2bb_shift);

 sdp->sd_tune.gt_logd_secs = sdp->sd_args.ar_commit;
 sdp->sd_tune.gt_quota_quantum = sdp->sd_args.ar_quota_quantum;
 if (sdp->sd_args.ar_statfs_quantum) {
  sdp->sd_tune.gt_statfs_slow = 0;
  sdp->sd_tune.gt_statfs_quantum = sdp->sd_args.ar_statfs_quantum;
 } else {
  sdp->sd_tune.gt_statfs_slow = 1;
  sdp->sd_tune.gt_statfs_quantum = 30;
 }

 error = init_names(sdp, silent);
 if (error) {


  free_sbd(sdp);
  sb->s_fs_info = ((void*)0);
  return error;
 }

 snprintf(sdp->sd_fsname, sizeof(sdp->sd_fsname), "%s", sdp->sd_table_name);

 error = gfs2_sys_fs_add(sdp);







 if (error)
  return error;

 gfs2_create_debugfs_file(sdp);

 error = gfs2_lm_mount(sdp, silent);
 if (error)
  goto fail_debug;

 error = init_locking(sdp, &mount_gh, DO);
 if (error)
  goto fail_lm;

 error = init_sb(sdp, silent);
 if (error)
  goto fail_locking;

 error = wait_on_journal(sdp);
 if (error)
  goto fail_sb;
 if (sdp->sd_lockstruct.ls_jid < 0) {
  error = sdp->sd_lockstruct.ls_jid;
  sdp->sd_lockstruct.ls_jid = 0;
  goto fail_sb;
 }

 if (sdp->sd_args.ar_spectator)
  snprintf(sdp->sd_fsname, sizeof(sdp->sd_fsname), "%s.s",
    sdp->sd_table_name);
 else
  snprintf(sdp->sd_fsname, sizeof(sdp->sd_fsname), "%s.%u",
    sdp->sd_table_name, sdp->sd_lockstruct.ls_jid);

 error = init_inodes(sdp, DO);
 if (error)
  goto fail_sb;

 error = init_per_node(sdp, DO);
 if (error)
  goto fail_inodes;

 error = gfs2_statfs_init(sdp);
 if (error) {
  fs_err(sdp, "can't initialize statfs subsystem: %d\n", error);
  goto fail_per_node;
 }

 if (!sb_rdonly(sb)) {
  error = gfs2_make_fs_rw(sdp);
  if (error) {
   fs_err(sdp, "can't make FS RW: %d\n", error);
   goto fail_per_node;
  }
 }

 gfs2_glock_dq_uninit(&mount_gh);
 gfs2_online_uevent(sdp);
 return 0;

fail_per_node:
 init_per_node(sdp, UNDO);
fail_inodes:
 init_inodes(sdp, UNDO);
fail_sb:
 if (sdp->sd_root_dir)
  dput(sdp->sd_root_dir);
 if (sdp->sd_master_dir)
  dput(sdp->sd_master_dir);
 if (sb->s_root)
  dput(sb->s_root);
 sb->s_root = ((void*)0);
fail_locking:
 init_locking(sdp, &mount_gh, UNDO);
fail_lm:
 complete_all(&sdp->sd_journal_ready);
 gfs2_gl_hash_clear(sdp);
 gfs2_lm_unmount(sdp);
fail_debug:
 gfs2_delete_debugfs_file(sdp);


 gfs2_sys_fs_del(sdp);
 sb->s_fs_info = ((void*)0);
 return error;
}

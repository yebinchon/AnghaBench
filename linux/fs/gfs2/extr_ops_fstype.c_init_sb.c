
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_root; int s_bdev; } ;
struct TYPE_8__ {scalar_t__ ar_meta; } ;
struct TYPE_6__ {int no_addr; } ;
struct TYPE_5__ {int no_addr; } ;
struct TYPE_7__ {scalar_t__ sb_bsize; TYPE_2__ sb_master_dir; TYPE_1__ sb_root_dir; } ;
struct gfs2_sbd {int sd_root_dir; int sd_master_dir; TYPE_4__ sd_args; TYPE_3__ sd_sb; struct super_block* sd_vfs; } ;
struct gfs2_holder {int dummy; } ;


 int EINVAL ;
 int GFS2_SB_LOCK ;
 int LM_ST_SHARED ;
 scalar_t__ PAGE_SIZE ;
 unsigned int bdev_logical_block_size (int ) ;
 int dget (int ) ;
 int dput (int ) ;
 int fs_err (struct gfs2_sbd*,char*,scalar_t__,...) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_num (struct gfs2_sbd*,int ,int *,int ,int ,struct gfs2_holder*) ;
 int gfs2_lookup_root (struct super_block*,int *,int ,char*) ;
 int gfs2_meta_glops ;
 int gfs2_read_sb (struct gfs2_sbd*,int) ;
 int sb_set_blocksize (struct super_block*,scalar_t__) ;

__attribute__((used)) static int init_sb(struct gfs2_sbd *sdp, int silent)
{
 struct super_block *sb = sdp->sd_vfs;
 struct gfs2_holder sb_gh;
 u64 no_addr;
 int ret;

 ret = gfs2_glock_nq_num(sdp, GFS2_SB_LOCK, &gfs2_meta_glops,
    LM_ST_SHARED, 0, &sb_gh);
 if (ret) {
  fs_err(sdp, "can't acquire superblock glock: %d\n", ret);
  return ret;
 }

 ret = gfs2_read_sb(sdp, silent);
 if (ret) {
  fs_err(sdp, "can't read superblock: %d\n", ret);
  goto out;
 }


 if (sdp->sd_sb.sb_bsize < bdev_logical_block_size(sb->s_bdev)) {
  ret = -EINVAL;
  fs_err(sdp, "FS block size (%u) is too small for device "
         "block size (%u)\n",
         sdp->sd_sb.sb_bsize, bdev_logical_block_size(sb->s_bdev));
  goto out;
 }
 if (sdp->sd_sb.sb_bsize > PAGE_SIZE) {
  ret = -EINVAL;
  fs_err(sdp, "FS block size (%u) is too big for machine "
         "page size (%u)\n",
         sdp->sd_sb.sb_bsize, (unsigned int)PAGE_SIZE);
  goto out;
 }
 sb_set_blocksize(sb, sdp->sd_sb.sb_bsize);


 no_addr = sdp->sd_sb.sb_root_dir.no_addr;
 ret = gfs2_lookup_root(sb, &sdp->sd_root_dir, no_addr, "root");
 if (ret)
  goto out;


 no_addr = sdp->sd_sb.sb_master_dir.no_addr;
 ret = gfs2_lookup_root(sb, &sdp->sd_master_dir, no_addr, "master");
 if (ret) {
  dput(sdp->sd_root_dir);
  goto out;
 }
 sb->s_root = dget(sdp->sd_args.ar_meta ? sdp->sd_master_dir : sdp->sd_root_dir);
out:
 gfs2_glock_dq_uninit(&sb_gh);
 return ret;
}

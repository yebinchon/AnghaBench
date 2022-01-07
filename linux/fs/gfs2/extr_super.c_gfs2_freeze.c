
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int sd_freeze_mutex; int sd_flags; int sd_freeze_gh; int sd_freeze_state; } ;


 int EBUSY ;
 int EINVAL ;
 int SDF_FS_FROZEN ;
 int SDF_WITHDRAWN ;
 scalar_t__ SFS_UNFROZEN ;
 scalar_t__ atomic_read (int *) ;
 int fs_err (struct gfs2_sbd*,char*,...) ;
 int gfs2_lock_fs_check_clean (struct gfs2_sbd*,int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_freeze(struct super_block *sb)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 int error = 0;

 mutex_lock(&sdp->sd_freeze_mutex);
 if (atomic_read(&sdp->sd_freeze_state) != SFS_UNFROZEN)
  goto out;

 if (test_bit(SDF_WITHDRAWN, &sdp->sd_flags)) {
  error = -EINVAL;
  goto out;
 }

 for (;;) {
  error = gfs2_lock_fs_check_clean(sdp, &sdp->sd_freeze_gh);
  if (!error)
   break;

  if (error == -EBUSY)
   fs_err(sdp, "waiting for recovery before freeze\n");
  else
   fs_err(sdp, "error freezing FS: %d\n", error);

  fs_err(sdp, "retrying...\n");
  msleep(1000);
 }
 set_bit(SDF_FS_FROZEN, &sdp->sd_flags);
out:
 mutex_unlock(&sdp->sd_freeze_mutex);
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int sd_flags; int sd_freeze_mutex; int sd_freeze_gh; int sd_freeze_state; } ;


 int SDF_FS_FROZEN ;
 scalar_t__ SFS_FROZEN ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_holder_initialized (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_on_bit (int *,int ,int ) ;

__attribute__((used)) static int gfs2_unfreeze(struct super_block *sb)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;

 mutex_lock(&sdp->sd_freeze_mutex);
        if (atomic_read(&sdp->sd_freeze_state) != SFS_FROZEN ||
     !gfs2_holder_initialized(&sdp->sd_freeze_gh)) {
  mutex_unlock(&sdp->sd_freeze_mutex);
                return 0;
 }

 gfs2_glock_dq_uninit(&sdp->sd_freeze_gh);
 mutex_unlock(&sdp->sd_freeze_mutex);
 return wait_on_bit(&sdp->sd_flags, SDF_FS_FROZEN, TASK_INTERRUPTIBLE);
}

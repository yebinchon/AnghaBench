
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_vfs; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int gfs2_statfs_sync (int ,int ) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t statfs_sync_store(struct gfs2_sbd *sdp, const char *buf,
     size_t len)
{
 int error, val;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 error = kstrtoint(buf, 0, &val);
 if (error)
  return error;

 if (val != 1)
  return -EINVAL;

 gfs2_statfs_sync(sdp->sd_vfs, 0);
 return len;
}

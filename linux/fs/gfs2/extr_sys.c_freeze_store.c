
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
 int freeze_super (int ) ;
 int fs_warn (struct gfs2_sbd*,char*,int,int) ;
 int kstrtoint (char const*,int ,int*) ;
 int thaw_super (int ) ;

__attribute__((used)) static ssize_t freeze_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 int error, n;

 error = kstrtoint(buf, 0, &n);
 if (error)
  return error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 switch (n) {
 case 0:
  error = thaw_super(sdp->sd_vfs);
  break;
 case 1:
  error = freeze_super(sdp->sd_vfs);
  break;
 default:
  return -EINVAL;
 }

 if (error) {
  fs_warn(sdp, "freeze %d error %d\n", n, error);
  return error;
 }

 return len;
}

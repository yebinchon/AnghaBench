
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {int gt_spin; } ;
struct gfs2_sbd {struct gfs2_tune sd_tune; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t tune_set(struct gfs2_sbd *sdp, unsigned int *field,
   int check_zero, const char *buf, size_t len)
{
 struct gfs2_tune *gt = &sdp->sd_tune;
 unsigned int x;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 error = kstrtouint(buf, 0, &x);
 if (error)
  return error;

 if (check_zero && !x)
  return -EINVAL;

 spin_lock(&gt->gt_spin);
 *field = x;
 spin_unlock(&gt->gt_spin);
 return len;
}

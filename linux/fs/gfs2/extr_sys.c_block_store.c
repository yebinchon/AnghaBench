
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef int ssize_t ;


 int DFL_BLOCK_LOCKS ;
 int EINVAL ;
 int clear_bit (int ,int *) ;
 int gfs2_glock_thaw (struct gfs2_sbd*) ;
 int kstrtoint (char const*,int ,int*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static ssize_t block_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 int ret, val;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 if (val == 1)
  set_bit(DFL_BLOCK_LOCKS, &ls->ls_recover_flags);
 else if (val == 0) {
  clear_bit(DFL_BLOCK_LOCKS, &ls->ls_recover_flags);
  smp_mb__after_atomic();
  gfs2_glock_thaw(sdp);
 } else {
  return -EINVAL;
 }
 return len;
}

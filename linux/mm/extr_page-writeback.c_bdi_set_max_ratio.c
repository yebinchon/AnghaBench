
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {unsigned int min_ratio; unsigned int max_ratio; unsigned int max_prop_frac; } ;


 int EINVAL ;
 unsigned int FPROP_FRAC_BASE ;
 int bdi_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int bdi_set_max_ratio(struct backing_dev_info *bdi, unsigned max_ratio)
{
 int ret = 0;

 if (max_ratio > 100)
  return -EINVAL;

 spin_lock_bh(&bdi_lock);
 if (bdi->min_ratio > max_ratio) {
  ret = -EINVAL;
 } else {
  bdi->max_ratio = max_ratio;
  bdi->max_prop_frac = (FPROP_FRAC_BASE * max_ratio) / 100;
 }
 spin_unlock_bh(&bdi_lock);

 return ret;
}

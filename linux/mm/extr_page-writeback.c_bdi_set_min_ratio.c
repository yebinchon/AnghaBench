
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {unsigned int max_ratio; scalar_t__ min_ratio; } ;


 int EINVAL ;
 int bdi_lock ;
 unsigned int bdi_min_ratio ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int bdi_set_min_ratio(struct backing_dev_info *bdi, unsigned int min_ratio)
{
 int ret = 0;

 spin_lock_bh(&bdi_lock);
 if (min_ratio > bdi->max_ratio) {
  ret = -EINVAL;
 } else {
  min_ratio -= bdi->min_ratio;
  if (bdi_min_ratio + min_ratio < 100) {
   bdi_min_ratio += min_ratio;
   bdi->min_ratio += min_ratio;
  } else {
   ret = -EINVAL;
  }
 }
 spin_unlock_bh(&bdi_lock);

 return ret;
}

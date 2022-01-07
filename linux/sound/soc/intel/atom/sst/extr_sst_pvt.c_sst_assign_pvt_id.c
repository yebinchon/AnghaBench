
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int block_lock; int pvt_id; int dev; } ;


 int EINVAL ;
 int SST_MAX_BLOCKS ;
 int change_bit (int,int *) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int ffz (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int sst_assign_pvt_id(struct intel_sst_drv *drv)
{
 int local;

 spin_lock(&drv->block_lock);

 local = ffz(drv->pvt_id);
 dev_dbg(drv->dev, "pvt_id assigned --> %d\n", local);
 if (local >= SST_MAX_BLOCKS){
  spin_unlock(&drv->block_lock);
  dev_err(drv->dev, "PVT _ID error: no free id blocks ");
  return -EINVAL;
 }

 change_bit(local, &drv->pvt_id);
 spin_unlock(&drv->block_lock);
 return local;
}

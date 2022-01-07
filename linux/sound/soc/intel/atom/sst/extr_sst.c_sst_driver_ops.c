
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dev_id; int dev; int * ops; int tstamp; } ;


 int EINVAL ;



 int SST_TIME_STAMP_MRFLD ;
 int dev_err (int ,char*,int) ;
 int mrfld_ops ;

int sst_driver_ops(struct intel_sst_drv *sst)
{

 switch (sst->dev_id) {
 case 128:
 case 130:
 case 129:
  sst->tstamp = SST_TIME_STAMP_MRFLD;
  sst->ops = &mrfld_ops;
  return 0;

 default:
  dev_err(sst->dev,
   "SST Driver capabilities missing for dev_id: %x",
   sst->dev_id);
  return -EINVAL;
 };
}

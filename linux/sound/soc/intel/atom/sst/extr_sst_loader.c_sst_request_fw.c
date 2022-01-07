
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int sst_lock; int dev; int firmware_name; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_firmware (struct firmware const**,int ,int ) ;
 int sst_cache_and_parse_fw (struct intel_sst_drv*,struct firmware const*) ;

__attribute__((used)) static int sst_request_fw(struct intel_sst_drv *sst)
{
 int retval = 0;
 const struct firmware *fw;

 retval = request_firmware(&fw, sst->firmware_name, sst->dev);
 if (retval) {
  dev_err(sst->dev, "request fw failed %d\n", retval);
  return retval;
 }
 if (fw == ((void*)0)) {
  dev_err(sst->dev, "fw is returning as null\n");
  return -EINVAL;
 }
 mutex_lock(&sst->sst_lock);
 retval = sst_cache_and_parse_fw(sst, fw);
 mutex_unlock(&sst->sst_lock);

 return retval;
}

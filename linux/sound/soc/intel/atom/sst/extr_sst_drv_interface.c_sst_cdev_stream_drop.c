
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dummy; } ;
struct device {int dummy; } ;


 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int sst_drop_stream (struct intel_sst_drv*,unsigned int) ;

__attribute__((used)) static int sst_cdev_stream_drop(struct device *dev, unsigned int str_id)
{
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 return sst_drop_stream(ctx, str_id);
}

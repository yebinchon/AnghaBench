
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {unsigned int dev_id; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct intel_sst_drv* devm_kzalloc (struct device*,int,int ) ;

int sst_alloc_drv_context(struct intel_sst_drv **ctx,
  struct device *dev, unsigned int dev_id)
{
 *ctx = devm_kzalloc(dev, sizeof(struct intel_sst_drv), GFP_KERNEL);
 if (!(*ctx))
  return -ENOMEM;

 (*ctx)->dev = dev;
 (*ctx)->dev_id = dev_id;

 return 0;
}

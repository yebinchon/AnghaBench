
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 int dev_err (struct device*,char*) ;
 TYPE_1__ sst_dsp_device ;
 int sst_register_dsp (TYPE_1__*) ;

int sst_register(struct device *dev)
{
 int ret_val;

 sst_dsp_device.dev = dev;
 ret_val = sst_register_dsp(&sst_dsp_device);
 if (ret_val)
  dev_err(dev, "Unable to register DSP with platform driver\n");

 return ret_val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int sst_dsp_device ;
 int sst_unregister_dsp (int *) ;

int sst_unregister(struct device *dev)
{
 return sst_unregister_dsp(&sst_dsp_device);
}

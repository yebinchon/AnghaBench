
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENXIO ;
 int dev_name (struct device*) ;
 int sscanf (int ,char*,int*) ;

__attribute__((used)) static int dimm_name_to_id(struct device *dev)
{
 int dimm;

 if (sscanf(dev_name(dev), "test_dimm%d", &dimm) != 1)
  return -ENXIO;
 return dimm;
}

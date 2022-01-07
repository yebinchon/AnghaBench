
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int INT_MAX ;
 int dev_err (TYPE_1__*,char*,char const*,int) ;
 int of_property_read_u32 (int ,char const*,int*) ;

__attribute__((used)) static int ramoops_parse_dt_size(struct platform_device *pdev,
     const char *propname, u32 *value)
{
 u32 val32 = 0;
 int ret;

 ret = of_property_read_u32(pdev->dev.of_node, propname, &val32);
 if (ret < 0 && ret != -EINVAL) {
  dev_err(&pdev->dev, "failed to parse property %s: %d\n",
   propname, ret);
  return ret;
 }

 if (val32 > INT_MAX) {
  dev_err(&pdev->dev, "%s %u > INT_MAX\n", propname, val32);
  return -EOVERFLOW;
 }

 *value = val32;
 return 0;
}

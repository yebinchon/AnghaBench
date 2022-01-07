
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct davinci_mcasp {int auxclk_fs_ratio; TYPE_1__* dev; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int davinci_mcasp_get_dt_params(struct davinci_mcasp *mcasp)
{
 struct device_node *np = mcasp->dev->of_node;
 int ret;
 u32 val;

 if (!np)
  return 0;

 ret = of_property_read_u32(np, "auxclk-fs-ratio", &val);
 if (ret >= 0)
  mcasp->auxclk_fs_ratio = val;

 return 0;
}

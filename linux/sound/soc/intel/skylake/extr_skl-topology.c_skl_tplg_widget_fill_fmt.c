
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skl_module_iface {TYPE_2__* outputs; TYPE_1__* inputs; } ;
struct skl_module_fmt {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct skl_module_fmt fmt; } ;
struct TYPE_3__ {struct skl_module_fmt fmt; } ;


 int EINVAL ;


 int dev_err (struct device*,char*,int) ;
 int skl_tplg_fill_fmt (struct device*,struct skl_module_fmt*,int,int) ;

__attribute__((used)) static int skl_tplg_widget_fill_fmt(struct device *dev,
  struct skl_module_iface *fmt,
  u32 tkn, u32 val, u32 dir, int fmt_idx)
{
 struct skl_module_fmt *dst_fmt;

 if (!fmt)
  return -EINVAL;

 switch (dir) {
 case 129:
  dst_fmt = &fmt->inputs[fmt_idx].fmt;
  break;

 case 128:
  dst_fmt = &fmt->outputs[fmt_idx].fmt;
  break;

 default:
  dev_err(dev, "Invalid direction: %d\n", dir);
  return -EINVAL;
 }

 return skl_tplg_fill_fmt(dev, dst_fmt, tkn, val);
}

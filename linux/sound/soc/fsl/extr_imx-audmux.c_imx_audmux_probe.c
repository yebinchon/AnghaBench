
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* id_entry; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_7__ {int driver_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * audmux_base ;
 int * audmux_clk ;
 int audmux_debugfs_init () ;
 int audmux_type ;
 int dev_dbg (TYPE_2__*,char*,int) ;
 int dev_err (TYPE_2__*,char*) ;
 int * devm_clk_get (TYPE_2__*,char*) ;
 int devm_kzalloc (TYPE_2__*,int,int ) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int imx_audmux_dt_ids ;
 int imx_audmux_parse_dt_defaults (struct platform_device*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int reg_max ;
 int regcache ;

__attribute__((used)) static int imx_audmux_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id =
   of_match_device(imx_audmux_dt_ids, &pdev->dev);

 audmux_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(audmux_base))
  return PTR_ERR(audmux_base);

 audmux_clk = devm_clk_get(&pdev->dev, "audmux");
 if (IS_ERR(audmux_clk)) {
  dev_dbg(&pdev->dev, "cannot get clock: %ld\n",
    PTR_ERR(audmux_clk));
  audmux_clk = ((void*)0);
 }

 if (of_id)
  pdev->id_entry = of_id->data;
 audmux_type = pdev->id_entry->driver_data;

 switch (audmux_type) {
 case 128:
  audmux_debugfs_init();
  reg_max = 14;
  break;
 case 129:
  reg_max = 6;
  break;
 default:
  dev_err(&pdev->dev, "unsupported version!\n");
  return -EINVAL;
 }

 regcache = devm_kzalloc(&pdev->dev, sizeof(u32) * reg_max, GFP_KERNEL);
 if (!regcache)
  return -ENOMEM;

 if (of_id)
  imx_audmux_parse_dt_defaults(pdev, pdev->dev.of_node);

 return 0;
}

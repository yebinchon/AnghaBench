
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk_data {int parent; } ;
struct platform_device {int dummy; } ;


 int SKL_MAX_CLK_SRC ;
 struct skl_clk_data* platform_get_drvdata (struct platform_device*) ;
 int unregister_parent_src_clk (int ,int ) ;
 int unregister_src_clk (struct skl_clk_data*) ;

__attribute__((used)) static int skl_clk_dev_remove(struct platform_device *pdev)
{
 struct skl_clk_data *data;

 data = platform_get_drvdata(pdev);
 unregister_src_clk(data);
 unregister_parent_src_clk(data->parent, SKL_MAX_CLK_SRC);

 return 0;
}

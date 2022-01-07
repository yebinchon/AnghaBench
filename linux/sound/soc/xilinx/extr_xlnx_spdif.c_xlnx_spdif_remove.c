
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_dev_data {int axi_clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct spdif_dev_data* dev_get_drvdata (int *) ;

__attribute__((used)) static int xlnx_spdif_remove(struct platform_device *pdev)
{
 struct spdif_dev_data *ctx = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(ctx->axi_clk);
 return 0;
}

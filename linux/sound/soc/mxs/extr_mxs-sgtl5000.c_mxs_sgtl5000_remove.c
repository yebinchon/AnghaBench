
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mxs_saif_put_mclk (int ) ;

__attribute__((used)) static int mxs_sgtl5000_remove(struct platform_device *pdev)
{
 mxs_saif_put_mclk(0);

 return 0;
}

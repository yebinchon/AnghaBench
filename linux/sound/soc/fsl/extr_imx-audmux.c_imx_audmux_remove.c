
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 scalar_t__ IMX31_AUDMUX ;
 int audmux_debugfs_remove () ;
 scalar_t__ audmux_type ;

__attribute__((used)) static int imx_audmux_remove(struct platform_device *pdev)
{
 if (audmux_type == IMX31_AUDMUX)
  audmux_debugfs_remove();

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_pcm_fiq_params {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int imx_pcm_fiq_init(struct platform_device *pdev,
  struct imx_pcm_fiq_params *params)
{
 return -ENODEV;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mx27vis_platform_data {int amp_muter_gpio; int amp_mutel_gpio; int amp_gain1_gpio; int amp_gain0_gpio; } ;
struct TYPE_5__ {struct snd_mx27vis_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {TYPE_3__* dev; } ;


 int EINVAL ;
 int IMX_AUDMUX_V1_PCR_RXDSEL (int ) ;
 int IMX_AUDMUX_V1_PCR_SYN ;
 int IMX_AUDMUX_V1_PCR_TCLKDIR ;
 int IMX_AUDMUX_V1_PCR_TFCSEL (int ) ;
 int IMX_AUDMUX_V1_PCR_TFSDIR ;
 int MX27_AUDMUX_HPCR1_SSI0 ;
 int MX27_AUDMUX_PPCR1_SSI_PINS_1 ;
 int dev_err (TYPE_3__*,char*,...) ;
 int imx_audmux_v1_configure_port (int ,int) ;
 TYPE_1__ mx27vis_aic32x4 ;
 int mx27vis_amp_gain0_gpio ;
 int mx27vis_amp_gain1_gpio ;
 int mx27vis_amp_mutel_gpio ;
 int mx27vis_amp_muter_gpio ;
 int snd_soc_register_card (TYPE_1__*) ;

__attribute__((used)) static int mx27vis_aic32x4_probe(struct platform_device *pdev)
{
 struct snd_mx27vis_platform_data *pdata = pdev->dev.platform_data;
 int ret;

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data supplied\n");
  return -EINVAL;
 }

 mx27vis_amp_gain0_gpio = pdata->amp_gain0_gpio;
 mx27vis_amp_gain1_gpio = pdata->amp_gain1_gpio;
 mx27vis_amp_mutel_gpio = pdata->amp_mutel_gpio;
 mx27vis_amp_muter_gpio = pdata->amp_muter_gpio;

 mx27vis_aic32x4.dev = &pdev->dev;
 ret = snd_soc_register_card(&mx27vis_aic32x4);
 if (ret) {
  dev_err(&pdev->dev, "snd_soc_register_card failed (%d)\n",
   ret);
  return ret;
 }


 imx_audmux_v1_configure_port(MX27_AUDMUX_HPCR1_SSI0,
   IMX_AUDMUX_V1_PCR_SYN |
   IMX_AUDMUX_V1_PCR_TFSDIR |
   IMX_AUDMUX_V1_PCR_TCLKDIR |
   IMX_AUDMUX_V1_PCR_TFCSEL(MX27_AUDMUX_PPCR1_SSI_PINS_1) |
   IMX_AUDMUX_V1_PCR_RXDSEL(MX27_AUDMUX_PPCR1_SSI_PINS_1)
 );
 imx_audmux_v1_configure_port(MX27_AUDMUX_PPCR1_SSI_PINS_1,
   IMX_AUDMUX_V1_PCR_SYN |
   IMX_AUDMUX_V1_PCR_RXDSEL(MX27_AUDMUX_HPCR1_SSI0)
 );

 return ret;
}

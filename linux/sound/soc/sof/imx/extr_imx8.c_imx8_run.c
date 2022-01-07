
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; scalar_t__ private; } ;
struct imx8_priv {int sc_ipc; } ;


 int IMX_SC_C_OFS_AUDIO ;
 int IMX_SC_C_OFS_IRQ ;
 int IMX_SC_C_OFS_PERIPH ;
 int IMX_SC_C_OFS_SEL ;
 int IMX_SC_R_DSP ;
 int RESET_VECTOR_VADDR ;
 int dev_err (int ,char*,...) ;
 int imx_sc_misc_set_control (int ,int ,int ,int) ;
 int imx_sc_pm_cpu_start (int ,int ,int,int ) ;

__attribute__((used)) static int imx8_run(struct snd_sof_dev *sdev)
{
 struct imx8_priv *dsp_priv = (struct imx8_priv *)sdev->private;
 int ret;

 ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
          IMX_SC_C_OFS_SEL, 1);
 if (ret < 0) {
  dev_err(sdev->dev, "Error system address offset source select\n");
  return ret;
 }

 ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
          IMX_SC_C_OFS_AUDIO, 0x80);
 if (ret < 0) {
  dev_err(sdev->dev, "Error system address offset of AUDIO\n");
  return ret;
 }

 ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
          IMX_SC_C_OFS_PERIPH, 0x5A);
 if (ret < 0) {
  dev_err(sdev->dev, "Error system address offset of PERIPH %d\n",
   ret);
  return ret;
 }

 ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
          IMX_SC_C_OFS_IRQ, 0x51);
 if (ret < 0) {
  dev_err(sdev->dev, "Error system address offset of IRQ\n");
  return ret;
 }

 imx_sc_pm_cpu_start(dsp_priv->sc_ipc, IMX_SC_R_DSP, 1,
       RESET_VECTOR_VADDR);

 return 0;
}

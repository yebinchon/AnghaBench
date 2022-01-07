
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sof_ipc_dsp_oops_xtensa {scalar_t__ exccause; scalar_t__ epc1; scalar_t__ epc5; scalar_t__ eps2; scalar_t__ eps6; int interrupt; int intenable; int eps7; int eps5; int eps4; int eps3; int depc; int epc7; int epc6; int epc4; int epc3; int epc2; int sar; int ps; int excvaddr; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_3__ {scalar_t__ id; int description; int msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int ,char*,...) ;
 TYPE_1__* xtensa_exception_causes ;

__attribute__((used)) static void xtensa_dsp_oops(struct snd_sof_dev *sdev, void *oops)
{
 struct sof_ipc_dsp_oops_xtensa *xoops = oops;
 int i;

 dev_err(sdev->dev, "error: DSP Firmware Oops\n");
 for (i = 0; i < ARRAY_SIZE(xtensa_exception_causes); i++) {
  if (xtensa_exception_causes[i].id == xoops->exccause) {
   dev_err(sdev->dev, "error: Exception Cause: %s, %s\n",
    xtensa_exception_causes[i].msg,
    xtensa_exception_causes[i].description);
  }
 }
 dev_err(sdev->dev, "EXCCAUSE 0x%8.8x EXCVADDR 0x%8.8x PS       0x%8.8x SAR     0x%8.8x\n",
  xoops->exccause, xoops->excvaddr, xoops->ps, xoops->sar);
 dev_err(sdev->dev, "EPC1     0x%8.8x EPC2     0x%8.8x EPC3     0x%8.8x EPC4    0x%8.8x",
  xoops->epc1, xoops->epc2, xoops->epc3, xoops->epc4);
 dev_err(sdev->dev, "EPC5     0x%8.8x EPC6     0x%8.8x EPC7     0x%8.8x DEPC    0x%8.8x",
  xoops->epc5, xoops->epc6, xoops->epc7, xoops->depc);
 dev_err(sdev->dev, "EPS2     0x%8.8x EPS3     0x%8.8x EPS4     0x%8.8x EPS5    0x%8.8x",
  xoops->eps2, xoops->eps3, xoops->eps4, xoops->eps5);
 dev_err(sdev->dev, "EPS6     0x%8.8x EPS7     0x%8.8x INTENABL 0x%8.8x INTERRU 0x%8.8x",
  xoops->eps6, xoops->eps7, xoops->intenable, xoops->interrupt);
}

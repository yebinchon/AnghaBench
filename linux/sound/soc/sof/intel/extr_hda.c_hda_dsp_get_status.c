
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_sof_dev {int dev; } ;
struct TYPE_3__ {scalar_t__ code; int msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_SRAM_REG_ROM_STATUS ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,int ,scalar_t__) ;
 TYPE_1__* hda_dsp_rom_msg ;
 scalar_t__ snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;

__attribute__((used)) static void hda_dsp_get_status(struct snd_sof_dev *sdev)
{
 u32 status;
 int i;

 status = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_SRAM_REG_ROM_STATUS);

 for (i = 0; i < ARRAY_SIZE(hda_dsp_rom_msg); i++) {
  if (status == hda_dsp_rom_msg[i].code) {
   dev_err(sdev->dev, "%s - code %8.8x\n",
    hda_dsp_rom_msg[i].msg, status);
   return;
  }
 }


 dev_dbg(sdev->dev, "unknown ROM status value %8.8x\n", status);
}

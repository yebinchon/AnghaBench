
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {int asic_loaded; TYPE_1__* card; TYPE_2__* comm_page; int * dsp_code; } ;
struct TYPE_4__ {int ext_box_status; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_TEST_ASIC ;
 int E3G_ASIC_NOT_LOADED ;
 int E3G_BOX_TYPE_MASK ;
 int EIO ;
 int ENODEV ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,int) ;
 int le32_to_cpu (int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int check_asic_status(struct echoaudio *chip)
{
 u32 box_status;

 if (wait_handshake(chip))
  return -EIO;

 chip->comm_page->ext_box_status = cpu_to_le32(E3G_ASIC_NOT_LOADED);
 chip->asic_loaded = 0;
 clear_handshake(chip);
 send_vector(chip, DSP_VC_TEST_ASIC);

 if (wait_handshake(chip)) {
  chip->dsp_code = ((void*)0);
  return -EIO;
 }

 box_status = le32_to_cpu(chip->comm_page->ext_box_status);
 dev_dbg(chip->card->dev, "box_status=%x\n", box_status);
 if (box_status == E3G_ASIC_NOT_LOADED)
  return -ENODEV;

 chip->asic_loaded = 1;
 return box_status & E3G_BOX_TYPE_MASK;
}

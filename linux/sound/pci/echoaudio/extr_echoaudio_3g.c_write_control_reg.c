
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_2__* card; TYPE_1__* comm_page; } ;
typedef scalar_t__ __le32 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ control_register; scalar_t__ e3g_frq_register; } ;


 int DSP_VC_WRITE_CONTROL_REG ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dev_dbg (int ,char*,...) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int write_control_reg(struct echoaudio *chip, u32 ctl, u32 frq,
        char force)
{
 __le32 ctl_reg, frq_reg;

 if (wait_handshake(chip))
  return -EIO;

 dev_dbg(chip->card->dev,
  "WriteControlReg: Setting 0x%x, 0x%x\n", ctl, frq);

 ctl_reg = cpu_to_le32(ctl);
 frq_reg = cpu_to_le32(frq);

 if (ctl_reg != chip->comm_page->control_register ||
     frq_reg != chip->comm_page->e3g_frq_register || force) {
  chip->comm_page->e3g_frq_register = frq_reg;
  chip->comm_page->control_register = ctl_reg;
  clear_handshake(chip);
  return send_vector(chip, DSP_VC_WRITE_CONTROL_REG);
 }

 dev_dbg(chip->card->dev, "WriteControlReg: not written, no change\n");
 return 0;
}

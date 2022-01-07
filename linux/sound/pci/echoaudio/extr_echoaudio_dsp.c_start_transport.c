
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* card; TYPE_2__* comm_page; int active_mask; } ;
struct TYPE_4__ {int cmd_start; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_START_TRANSFER ;
 int EINVAL ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int start_transport(struct echoaudio *chip, u32 channel_mask,
      u32 cyclic_mask)
{

 if (wait_handshake(chip))
  return -EIO;

 chip->comm_page->cmd_start |= cpu_to_le32(channel_mask);

 if (chip->comm_page->cmd_start) {
  clear_handshake(chip);
  send_vector(chip, DSP_VC_START_TRANSFER);
  if (wait_handshake(chip))
   return -EIO;

  chip->active_mask |= channel_mask;
  chip->comm_page->cmd_start = 0;
  return 0;
 }

 dev_err(chip->card->dev, "start_transport: No pipes to start!\n");
 return -EINVAL;
}

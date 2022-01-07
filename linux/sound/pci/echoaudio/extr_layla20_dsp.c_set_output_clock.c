
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct echoaudio {int output_clock; TYPE_2__* comm_page; TYPE_1__* card; } ;
struct TYPE_4__ {int output_clock; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_UPDATE_CLOCKS ;


 int EINVAL ;
 int EIO ;
 int LAYLA20_OUTPUT_CLOCK_SUPER ;
 int LAYLA20_OUTPUT_CLOCK_WORD ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_output_clock(struct echoaudio *chip, u16 clock)
{
 switch (clock) {
 case 129:
  clock = LAYLA20_OUTPUT_CLOCK_SUPER;
  break;
 case 128:
  clock = LAYLA20_OUTPUT_CLOCK_WORD;
  break;
 default:
  dev_err(chip->card->dev, "set_output_clock wrong clock\n");
  return -EINVAL;
 }

 if (wait_handshake(chip))
  return -EIO;

 chip->comm_page->output_clock = cpu_to_le16(clock);
 chip->output_clock = clock;
 clear_handshake(chip);
 return send_vector(chip, DSP_VC_UPDATE_CLOCKS);
}

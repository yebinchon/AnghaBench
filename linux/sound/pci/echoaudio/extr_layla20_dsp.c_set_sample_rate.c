
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; TYPE_1__* comm_page; TYPE_2__* card; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void* sample_rate; } ;


 int DSP_VC_SET_LAYLA_SAMPLE_RATE ;
 scalar_t__ ECHO_CLOCK_INTERNAL ;
 int EINVAL ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 void* cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 if (snd_BUG_ON(rate < 8000 || rate > 50000))
  return -EINVAL;



 if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
  dev_warn(chip->card->dev,
    "Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\n");
  chip->comm_page->sample_rate = cpu_to_le32(rate);
  chip->sample_rate = rate;
  return 0;
 }

 if (wait_handshake(chip))
  return -EIO;

 dev_dbg(chip->card->dev, "set_sample_rate(%d)\n", rate);
 chip->sample_rate = rate;
 chip->comm_page->sample_rate = cpu_to_le32(rate);
 clear_handshake(chip);
 return send_vector(chip, DSP_VC_SET_LAYLA_SAMPLE_RATE);
}

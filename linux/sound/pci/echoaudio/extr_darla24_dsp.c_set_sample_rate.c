
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct echoaudio {scalar_t__ input_clock; TYPE_2__* comm_page; int sample_rate; TYPE_1__* card; } ;
struct TYPE_4__ {int gd_clock_state; int sample_rate; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_SET_GD_AUDIO_STATE ;
 scalar_t__ ECHO_CLOCK_ESYNC ;
 int EINVAL ;
 int EIO ;
 int GD24_11025 ;
 int GD24_16000 ;
 int GD24_22050 ;
 int GD24_32000 ;
 int GD24_44100 ;
 int GD24_48000 ;
 int GD24_8000 ;
 int GD24_88200 ;
 int GD24_96000 ;
 int GD24_EXT_SYNC ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int ) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u8 clock;

 switch (rate) {
 case 96000:
  clock = GD24_96000;
  break;
 case 88200:
  clock = GD24_88200;
  break;
 case 48000:
  clock = GD24_48000;
  break;
 case 44100:
  clock = GD24_44100;
  break;
 case 32000:
  clock = GD24_32000;
  break;
 case 22050:
  clock = GD24_22050;
  break;
 case 16000:
  clock = GD24_16000;
  break;
 case 11025:
  clock = GD24_11025;
  break;
 case 8000:
  clock = GD24_8000;
  break;
 default:
  dev_err(chip->card->dev,
   "set_sample_rate: Error, invalid sample rate %d\n",
   rate);
  return -EINVAL;
 }

 if (wait_handshake(chip))
  return -EIO;

 dev_dbg(chip->card->dev,
  "set_sample_rate: %d clock %d\n", rate, clock);
 chip->sample_rate = rate;


 if (chip->input_clock == ECHO_CLOCK_ESYNC)
  clock = GD24_EXT_SYNC;

 chip->comm_page->sample_rate = cpu_to_le32(rate);
 chip->comm_page->gd_clock_state = clock;
 clear_handshake(chip);
 return send_vector(chip, DSP_VC_SET_GD_AUDIO_STATE);
}

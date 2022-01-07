
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct echoaudio {int input_clock; TYPE_1__* comm_page; TYPE_2__* card; scalar_t__ sample_rate; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int input_clock; } ;


 int DSP_VC_UPDATE_CLOCKS ;




 int EINVAL ;
 int LAYLA20_CLOCK_INTERNAL ;
 int LAYLA20_CLOCK_SPDIF ;
 int LAYLA20_CLOCK_SUPER ;
 int LAYLA20_CLOCK_WORD ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*,int) ;
 int send_vector (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,scalar_t__) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock_source)
{
 u16 clock;
 u32 rate;

 rate = 0;
 switch (clock_source) {
 case 131:
  rate = chip->sample_rate;
  clock = LAYLA20_CLOCK_INTERNAL;
  break;
 case 130:
  clock = LAYLA20_CLOCK_SPDIF;
  break;
 case 128:
  clock = LAYLA20_CLOCK_WORD;
  break;
 case 129:
  clock = LAYLA20_CLOCK_SUPER;
  break;
 default:
  dev_err(chip->card->dev,
   "Input clock 0x%x not supported for Layla24\n",
   clock_source);
  return -EINVAL;
 }
 chip->input_clock = clock_source;

 chip->comm_page->input_clock = cpu_to_le16(clock);
 clear_handshake(chip);
 send_vector(chip, DSP_VC_UPDATE_CLOCKS);

 if (rate)
  set_sample_rate(chip, rate);

 return 0;
}

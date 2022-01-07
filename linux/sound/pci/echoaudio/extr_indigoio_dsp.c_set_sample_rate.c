
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* comm_page; int sample_rate; } ;
struct TYPE_2__ {int sample_rate; } ;


 int DSP_VC_UPDATE_CLOCKS ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 if (wait_handshake(chip))
  return -EIO;

 chip->sample_rate = rate;
 chip->comm_page->sample_rate = cpu_to_le32(rate);
 clear_handshake(chip);
 return send_vector(chip, DSP_VC_UPDATE_CLOCKS);
}

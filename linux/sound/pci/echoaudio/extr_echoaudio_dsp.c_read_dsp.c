
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct echoaudio {int bad_board; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CHI32_DATA_REG ;
 scalar_t__ CHI32_STATUS_HOST_READ_FULL ;
 int CHI32_STATUS_REG ;
 int EIO ;
 scalar_t__ READ_DSP_TIMEOUT ;
 int cond_resched () ;
 int dev_err (int ,char*) ;
 scalar_t__ get_dsp_register (struct echoaudio*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int read_dsp(struct echoaudio *chip, u32 *data)
{
 u32 status, i;

 for (i = 0; i < READ_DSP_TIMEOUT; i++) {
  status = get_dsp_register(chip, CHI32_STATUS_REG);
  if ((status & CHI32_STATUS_HOST_READ_FULL) != 0) {
   *data = get_dsp_register(chip, CHI32_DATA_REG);
   return 0;
  }
  udelay(1);
  cond_resched();
 }

 chip->bad_board = 1;
 dev_err(chip->card->dev, "read_dsp: Set bad_board to true\n");
 return -EIO;
}

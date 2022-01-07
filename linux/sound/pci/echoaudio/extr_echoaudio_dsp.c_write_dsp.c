
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {int bad_board; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CHI32_DATA_REG ;
 int CHI32_STATUS_HOST_WRITE_EMPTY ;
 int CHI32_STATUS_REG ;
 int EIO ;
 int cond_resched () ;
 int dev_dbg (int ,char*) ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int set_dsp_register (struct echoaudio*,int ,int) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int write_dsp(struct echoaudio *chip, u32 data)
{
 u32 status, i;

 for (i = 0; i < 10000000; i++) {
  status = get_dsp_register(chip, CHI32_STATUS_REG);
  if ((status & CHI32_STATUS_HOST_WRITE_EMPTY) != 0) {
   set_dsp_register(chip, CHI32_DATA_REG, data);
   wmb();
   return 0;
  }
  udelay(1);
  cond_resched();
 }

 chip->bad_board = 1;
 dev_dbg(chip->card->dev, "write_dsp: Set bad_board to true\n");
 return -EIO;
}

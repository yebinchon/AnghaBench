
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_SERBST ;
 int EINVAL ;
 int SERBST_WBSY ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;

__attribute__((used)) static int cs46xx_wait_for_fifo(struct snd_cs46xx * chip,int retry_timeout)
{
 u32 i, status = 0;



 for(i = 0; i < 50; i++){
  status = snd_cs46xx_peekBA0(chip, BA0_SERBST);

  if( !(status & SERBST_WBSY) )
   break;

  mdelay(retry_timeout);
 }

 if(status & SERBST_WBSY) {
  dev_err(chip->card->dev,
   "failure waiting for FIFO command to complete\n");
  return -EINVAL;
 }

 return 0;
}

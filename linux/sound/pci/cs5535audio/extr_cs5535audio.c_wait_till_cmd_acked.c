
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs5535audio {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ACC_CODEC_CNTL ;
 unsigned int CMD_NEW ;
 unsigned int cs_readl (struct cs5535audio*,int ) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void wait_till_cmd_acked(struct cs5535audio *cs5535au, unsigned long timeout)
{
 unsigned int tmp;
 do {
  tmp = cs_readl(cs5535au, ACC_CODEC_CNTL);
  if (!(tmp & CMD_NEW))
   break;
  udelay(1);
 } while (--timeout);
 if (!timeout)
  dev_err(cs5535au->card->dev,
   "Failure writing to cs5535 codec\n");
}

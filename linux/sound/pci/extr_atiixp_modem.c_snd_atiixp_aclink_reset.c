
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp_modem {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ATI_REG_CMD_ACLINK_ACTIVE ;
 int ATI_REG_CMD_AC_RESET ;
 int ATI_REG_CMD_AC_SOFT_RESET ;
 int ATI_REG_CMD_AC_SYNC ;
 int ATI_REG_CMD_POWERDOWN ;
 int CMD ;
 int atiixp_read (struct atiixp_modem*,int ) ;
 scalar_t__ atiixp_update (struct atiixp_modem*,int ,int,int) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_atiixp_aclink_reset(struct atiixp_modem *chip)
{
 int timeout;


 if (atiixp_update(chip, CMD, ATI_REG_CMD_POWERDOWN, 0))
  udelay(10);


 atiixp_update(chip, CMD, ATI_REG_CMD_AC_SOFT_RESET, ATI_REG_CMD_AC_SOFT_RESET);
 atiixp_read(chip, CMD);
 udelay(10);
 atiixp_update(chip, CMD, ATI_REG_CMD_AC_SOFT_RESET, 0);

 timeout = 10;
 while (! (atiixp_read(chip, CMD) & ATI_REG_CMD_ACLINK_ACTIVE)) {

  atiixp_update(chip, CMD, ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET,
         ATI_REG_CMD_AC_SYNC);
  atiixp_read(chip, CMD);
  msleep(1);
  atiixp_update(chip, CMD, ATI_REG_CMD_AC_RESET, ATI_REG_CMD_AC_RESET);
  if (!--timeout) {
   dev_err(chip->card->dev, "codec reset timeout\n");
   break;
  }
 }


 atiixp_update(chip, CMD, ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET,
        ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET);

 return 0;
}

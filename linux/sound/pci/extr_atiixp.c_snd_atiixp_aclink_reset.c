
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ATI_REG_CMD_ACLINK_ACTIVE ;
 int ATI_REG_CMD_AC_RESET ;
 int ATI_REG_CMD_AC_SOFT_RESET ;
 int ATI_REG_CMD_AC_SYNC ;
 int ATI_REG_CMD_POWERDOWN ;
 int CMD ;
 int atiixp_read (struct atiixp*,int ) ;
 scalar_t__ atiixp_update (struct atiixp*,int ,int,int) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_atiixp_aclink_reset(struct atiixp *chip)
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
  mdelay(1);
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

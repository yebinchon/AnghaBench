
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniperif {scalar_t__ ver; int dev; } ;


 int EIO ;
 scalar_t__ GET_UNIPERIF_SOFT_RST_SOFT_RST (struct uniperif*) ;
 int SET_UNIPERIF_SOFT_RST_SOFT_RST (struct uniperif*) ;
 scalar_t__ SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0 ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

int sti_uniperiph_reset(struct uniperif *uni)
{
 int count = 10;


 SET_UNIPERIF_SOFT_RST_SOFT_RST(uni);

 if (uni->ver < SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0) {
  while (GET_UNIPERIF_SOFT_RST_SOFT_RST(uni) && count) {
   udelay(5);
   count--;
  }
 }

 if (!count) {
  dev_err(uni->dev, "Failed to reset uniperif\n");
  return -EIO;
 }

 return 0;
}

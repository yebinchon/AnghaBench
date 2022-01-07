
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dep_link_up; int rf_mode; } ;


 int NFC_RF_NONE ;
 int nfc_genl_tm_deactivated (struct nfc_dev*) ;

int nfc_tm_deactivated(struct nfc_dev *dev)
{
 dev->dep_link_up = 0;
 dev->rf_mode = NFC_RF_NONE;

 return nfc_genl_tm_deactivated(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_digital_dev {int dummy; } ;


 int digital_tg_config_nfca (struct nfc_digital_dev*) ;
 int digital_tg_listen (struct nfc_digital_dev*,int,int ,int *) ;
 int digital_tg_recv_sens_req ;

int digital_tg_listen_nfca(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 int rc;

 rc = digital_tg_config_nfca(ddev);
 if (rc)
  return rc;

 return digital_tg_listen(ddev, 300, digital_tg_recv_sens_req, ((void*)0));
}

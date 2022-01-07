
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_digital_dev {int dummy; } ;


 int digital_tg_config_nfcf (struct nfc_digital_dev*,int ) ;
 int digital_tg_listen (struct nfc_digital_dev*,int,int ,int *) ;
 int digital_tg_recv_sensf_req ;

int digital_tg_listen_nfcf(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 int rc;

 rc = digital_tg_config_nfcf(ddev, rf_tech);
 if (rc)
  return rc;

 return digital_tg_listen(ddev, 300, digital_tg_recv_sensf_req, ((void*)0));
}

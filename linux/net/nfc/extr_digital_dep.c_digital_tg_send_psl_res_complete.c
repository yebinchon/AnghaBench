
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_tg_configure_hw (struct nfc_digital_dev*,int ,unsigned long) ;
 int digital_tg_listen (struct nfc_digital_dev*,int,int ,int *) ;
 int digital_tg_recv_dep_req ;
 int digital_tg_set_rf_tech (struct nfc_digital_dev*,unsigned long) ;

__attribute__((used)) static void digital_tg_send_psl_res_complete(struct nfc_digital_dev *ddev,
          void *arg, struct sk_buff *resp)
{
 u8 rf_tech = (unsigned long)arg;

 if (IS_ERR(resp))
  return;

 digital_tg_set_rf_tech(ddev, rf_tech);

 digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH, rf_tech);

 digital_tg_listen(ddev, 1500, digital_tg_recv_dep_req, ((void*)0));

 dev_kfree_skb(resp);
}

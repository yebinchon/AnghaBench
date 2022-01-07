
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_CMD_SENS_REQ ;
 int ENOMEM ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCA_SHORT ;
 int NFC_DIGITAL_RF_TECH_106A ;
 int digital_in_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int digital_in_recv_sens_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int ) ;

int digital_in_send_sens_req(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 struct sk_buff *skb;
 int rc;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
         NFC_DIGITAL_RF_TECH_106A);
 if (rc)
  return rc;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCA_SHORT);
 if (rc)
  return rc;

 skb = digital_skb_alloc(ddev, 1);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, DIGITAL_CMD_SENS_REQ);

 rc = digital_in_send_cmd(ddev, skb, 30, digital_in_recv_sens_res, ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}

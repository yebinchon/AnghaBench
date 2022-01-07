
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensb_req {int afi; int param; int cmd; } ;


 int DIGITAL_CMD_SENSB_REQ ;
 int DIGITAL_SENSB_N (int ) ;
 int ENOMEM ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCB ;
 int NFC_DIGITAL_RF_TECH_106B ;
 int digital_in_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int digital_in_recv_sensb_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct digital_sensb_req* skb_put (struct sk_buff*,int) ;

int digital_in_send_sensb_req(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 struct digital_sensb_req *sensb_req;
 struct sk_buff *skb;
 int rc;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
         NFC_DIGITAL_RF_TECH_106B);
 if (rc)
  return rc;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCB);
 if (rc)
  return rc;

 skb = digital_skb_alloc(ddev, sizeof(*sensb_req));
 if (!skb)
  return -ENOMEM;

 sensb_req = skb_put(skb, sizeof(*sensb_req));

 sensb_req->cmd = DIGITAL_CMD_SENSB_REQ;
 sensb_req->afi = 0x00;
 sensb_req->param = DIGITAL_SENSB_N(0);

 rc = digital_in_send_cmd(ddev, skb, 30, digital_in_recv_sensb_res,
     ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}

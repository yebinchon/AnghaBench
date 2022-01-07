
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_req {int sc1; int sc2; scalar_t__ tsn; int rc; int cmd; } ;


 int DIGITAL_CMD_SENSF_REQ ;
 int DIGITAL_DRV_CAPS_IN_CRC (struct nfc_digital_dev*) ;
 int ENOMEM ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCF ;
 int digital_in_configure_hw (struct nfc_digital_dev*,int ,int) ;
 int digital_in_recv_sensf_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int digital_skb_add_crc_f (struct sk_buff*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;

int digital_in_send_sensf_req(struct nfc_digital_dev *ddev, u8 rf_tech)
{
 struct digital_sensf_req *sensf_req;
 struct sk_buff *skb;
 int rc;
 u8 size;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH, rf_tech);
 if (rc)
  return rc;

 rc = digital_in_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCF);
 if (rc)
  return rc;

 size = sizeof(struct digital_sensf_req);

 skb = digital_skb_alloc(ddev, size);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, size);

 sensf_req = (struct digital_sensf_req *)skb->data;
 sensf_req->cmd = DIGITAL_CMD_SENSF_REQ;
 sensf_req->sc1 = 0xFF;
 sensf_req->sc2 = 0xFF;
 sensf_req->rc = 0;
 sensf_req->tsn = 0;

 *(u8 *)skb_push(skb, 1) = size + 1;

 if (!DIGITAL_DRV_CAPS_IN_CRC(ddev))
  digital_skb_add_crc_f(skb);

 rc = digital_in_send_cmd(ddev, skb, 30, digital_in_recv_sensf_res,
     ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_SENS_RES_NFC_DEP ;
 int ENOMEM ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_FRAMING_NFCA_STANDARD ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int digital_tg_recv_sdd_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int digital_tg_send_sens_res(struct nfc_digital_dev *ddev)
{
 struct sk_buff *skb;
 u8 *sens_res;
 int rc;

 skb = digital_skb_alloc(ddev, 2);
 if (!skb)
  return -ENOMEM;

 sens_res = skb_put(skb, 2);

 sens_res[0] = (DIGITAL_SENS_RES_NFC_DEP >> 8) & 0xFF;
 sens_res[1] = DIGITAL_SENS_RES_NFC_DEP & 0xFF;

 rc = digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCA_STANDARD);
 if (rc) {
  kfree_skb(skb);
  return rc;
 }

 rc = digital_tg_send_cmd(ddev, skb, 300, digital_tg_recv_sdd_req,
     ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_DRV_CAPS_TG_CRC (struct nfc_digital_dev*) ;
 int DIGITAL_SEL_RES_NFC_DEP ;
 int ENOMEM ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE ;
 int digital_skb_add_crc_a (struct sk_buff*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int digital_tg_recv_atr_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int ) ;

__attribute__((used)) static int digital_tg_send_sel_res(struct nfc_digital_dev *ddev)
{
 struct sk_buff *skb;
 int rc;

 skb = digital_skb_alloc(ddev, 1);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, DIGITAL_SEL_RES_NFC_DEP);

 if (!DIGITAL_DRV_CAPS_TG_CRC(ddev))
  digital_skb_add_crc_a(skb);

 rc = digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE);
 if (rc) {
  kfree_skb(skb);
  return rc;
 }

 rc = digital_tg_send_cmd(ddev, skb, 300, digital_tg_recv_atr_req,
     ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}

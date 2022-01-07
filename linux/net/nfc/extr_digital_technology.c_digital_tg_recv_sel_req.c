
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_DRV_CAPS_TG_CRC (struct nfc_digital_dev*) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_skb_check_crc_a (struct sk_buff*) ;
 int digital_tg_send_sel_res (struct nfc_digital_dev*) ;

__attribute__((used)) static void digital_tg_recv_sel_req(struct nfc_digital_dev *ddev, void *arg,
        struct sk_buff *resp)
{
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (!DIGITAL_DRV_CAPS_TG_CRC(ddev)) {
  rc = digital_skb_check_crc_a(resp);
  if (rc) {
   PROTOCOL_ERR("4.4.1.3");
   goto exit;
  }
 }



 rc = digital_tg_send_sel_res(ddev);

exit:
 if (rc)
  digital_poll_next_tech(ddev);

 dev_kfree_skb(resp);
}

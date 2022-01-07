
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ len; int * data; } ;
struct nfc_target {int sel_res; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_DRV_CAPS_IN_CRC (struct nfc_digital_dev*) ;
 scalar_t__ DIGITAL_SEL_RES_IS_NFC_DEP (int ) ;
 scalar_t__ DIGITAL_SEL_RES_IS_T2T (int ) ;
 scalar_t__ DIGITAL_SEL_RES_IS_T4T (int ) ;
 scalar_t__ DIGITAL_SEL_RES_LEN ;
 int DIGITAL_SEL_RES_NFCID1_COMPLETE (int ) ;
 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_MIFARE ;
 int NFC_PROTO_NFC_DEP ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_in_send_rats (struct nfc_digital_dev*,struct nfc_target*) ;
 int digital_in_send_sdd_req (struct nfc_digital_dev*,struct nfc_target*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_skb_check_crc_a (struct sk_buff*) ;
 int digital_target_found (struct nfc_digital_dev*,struct nfc_target*,int ) ;
 int kfree (struct nfc_target*) ;

__attribute__((used)) static void digital_in_recv_sel_res(struct nfc_digital_dev *ddev, void *arg,
        struct sk_buff *resp)
{
 struct nfc_target *target = arg;
 int rc;
 u8 sel_res;
 u8 nfc_proto;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (!DIGITAL_DRV_CAPS_IN_CRC(ddev)) {
  rc = digital_skb_check_crc_a(resp);
  if (rc) {
   PROTOCOL_ERR("4.4.1.3");
   goto exit;
  }
 }

 if (resp->len != DIGITAL_SEL_RES_LEN) {
  rc = -EIO;
  goto exit;
 }

 sel_res = resp->data[0];

 if (!DIGITAL_SEL_RES_NFCID1_COMPLETE(sel_res)) {
  rc = digital_in_send_sdd_req(ddev, target);
  if (rc)
   goto exit;

  goto exit_free_skb;
 }

 target->sel_res = sel_res;

 if (DIGITAL_SEL_RES_IS_T2T(sel_res)) {
  nfc_proto = NFC_PROTO_MIFARE;
 } else if (DIGITAL_SEL_RES_IS_NFC_DEP(sel_res)) {
  nfc_proto = NFC_PROTO_NFC_DEP;
 } else if (DIGITAL_SEL_RES_IS_T4T(sel_res)) {
  rc = digital_in_send_rats(ddev, target);
  if (rc)
   goto exit;




  goto exit_free_skb;
 } else {
  rc = -EOPNOTSUPP;
  goto exit;
 }

 rc = digital_target_found(ddev, target, nfc_proto);

exit:
 kfree(target);

exit_free_skb:
 dev_kfree_skb(resp);

 if (rc)
  digital_poll_next_tech(ddev);
}

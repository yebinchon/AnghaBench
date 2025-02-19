
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {size_t len; scalar_t__* data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;scalar_t__ did; int poll_tech_count; int nfc_dev; int remote_payload_max; int curr_protocol; } ;
struct digital_atr_req {scalar_t__ dir; scalar_t__ cmd; scalar_t__ did; int gb; int pp; } ;


 int DIGITAL_ATR_REQ_MIN_SIZE ;
 scalar_t__ DIGITAL_CMD_ATR_REQ ;
 scalar_t__ DIGITAL_DID_MAX ;
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 scalar_t__ DIGITAL_NFC_DEP_NFCA_SOD_SB ;
 int DIGITAL_PAYLOAD_PP_TO_BITS (int ) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_COMM_PASSIVE ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED ;
 int NFC_DIGITAL_RF_TECH_106A ;
 int NFC_DIGITAL_RF_TECH_212F ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_payload_bits_to_size (int ) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_skb_pull_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int digital_tg_send_atr_res (struct nfc_digital_dev*,struct digital_atr_req*) ;
 int digital_tg_set_rf_tech (struct nfc_digital_dev*,int ) ;
 int nfc_tm_activated (int ,int ,int ,int ,size_t) ;
 int stub1 (struct sk_buff*) ;

void digital_tg_recv_atr_req(struct nfc_digital_dev *ddev, void *arg,
        struct sk_buff *resp)
{
 int rc;
 struct digital_atr_req *atr_req;
 size_t gb_len, min_size;
 u8 poll_tech_count, payload_bits;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (!resp->len) {
  rc = -EIO;
  goto exit;
 }

 if (resp->data[0] == DIGITAL_NFC_DEP_NFCA_SOD_SB) {
  min_size = DIGITAL_ATR_REQ_MIN_SIZE + 2;
  digital_tg_set_rf_tech(ddev, NFC_DIGITAL_RF_TECH_106A);
 } else {
  min_size = DIGITAL_ATR_REQ_MIN_SIZE + 1;
  digital_tg_set_rf_tech(ddev, NFC_DIGITAL_RF_TECH_212F);
 }

 if (resp->len < min_size) {
  rc = -EIO;
  goto exit;
 }

 ddev->curr_protocol = NFC_PROTO_NFC_DEP_MASK;

 rc = ddev->skb_check_crc(resp);
 if (rc) {
  PROTOCOL_ERR("14.4.1.6");
  goto exit;
 }

 rc = digital_skb_pull_dep_sod(ddev, resp);
 if (rc) {
  PROTOCOL_ERR("14.4.1.2");
  goto exit;
 }

 atr_req = (struct digital_atr_req *)resp->data;

 if (atr_req->dir != DIGITAL_NFC_DEP_FRAME_DIR_OUT ||
     atr_req->cmd != DIGITAL_CMD_ATR_REQ ||
     atr_req->did > DIGITAL_DID_MAX) {
  rc = -EINVAL;
  goto exit;
 }

 payload_bits = DIGITAL_PAYLOAD_PP_TO_BITS(atr_req->pp);
 ddev->remote_payload_max = digital_payload_bits_to_size(payload_bits);

 if (!ddev->remote_payload_max) {
  rc = -EINVAL;
  goto exit;
 }

 ddev->did = atr_req->did;

 rc = digital_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED);
 if (rc)
  goto exit;

 rc = digital_tg_send_atr_res(ddev, atr_req);
 if (rc)
  goto exit;

 gb_len = resp->len - sizeof(struct digital_atr_req);

 poll_tech_count = ddev->poll_tech_count;
 ddev->poll_tech_count = 0;

 rc = nfc_tm_activated(ddev->nfc_dev, NFC_PROTO_NFC_DEP_MASK,
         NFC_COMM_PASSIVE, atr_req->gb, gb_len);
 if (rc) {
  ddev->poll_tech_count = poll_tech_count;
  goto exit;
 }

 rc = 0;
exit:
 if (rc)
  digital_poll_next_tech(ddev);

 dev_kfree_skb(resp);
}

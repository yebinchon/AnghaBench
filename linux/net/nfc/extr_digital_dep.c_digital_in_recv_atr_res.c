
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int idx; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;int protocols; scalar_t__ curr_rf_tech; scalar_t__ curr_protocol; scalar_t__ curr_nfc_dep_pni; int nfc_dev; int remote_payload_max; int dep_rwt; } ;
struct digital_atr_res {int gb; int pp; int to; } ;


 size_t DIGITAL_ATR_RES_TO_WT (int ) ;
 size_t DIGITAL_NFC_DEP_IN_MAX_WT ;
 size_t DIGITAL_PAYLOAD_PP_TO_BITS (int ) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_COMM_ACTIVE ;
 scalar_t__ NFC_DIGITAL_RF_TECH_424F ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_RF_INITIATOR ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_in_send_psl_req (struct nfc_digital_dev*,struct nfc_target*) ;
 int digital_payload_bits_to_size (size_t) ;
 int * digital_rwt_map ;
 int digital_skb_pull_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int nfc_dep_link_is_up (int ,int ,int ,int ) ;
 int nfc_set_remote_general_bytes (int ,int ,size_t) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static void digital_in_recv_atr_res(struct nfc_digital_dev *ddev, void *arg,
     struct sk_buff *resp)
{
 struct nfc_target *target = arg;
 struct digital_atr_res *atr_res;
 u8 gb_len, payload_bits;
 u8 wt;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

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

 if (resp->len < sizeof(struct digital_atr_res)) {
  rc = -EIO;
  goto exit;
 }

 gb_len = resp->len - sizeof(struct digital_atr_res);

 atr_res = (struct digital_atr_res *)resp->data;

 wt = DIGITAL_ATR_RES_TO_WT(atr_res->to);
 if (wt > DIGITAL_NFC_DEP_IN_MAX_WT)
  wt = DIGITAL_NFC_DEP_IN_MAX_WT;
 ddev->dep_rwt = digital_rwt_map[wt];

 payload_bits = DIGITAL_PAYLOAD_PP_TO_BITS(atr_res->pp);
 ddev->remote_payload_max = digital_payload_bits_to_size(payload_bits);

 if (!ddev->remote_payload_max) {
  rc = -EINVAL;
  goto exit;
 }

 rc = nfc_set_remote_general_bytes(ddev->nfc_dev, atr_res->gb, gb_len);
 if (rc)
  goto exit;

 if ((ddev->protocols & NFC_PROTO_FELICA_MASK) &&
     (ddev->curr_rf_tech != NFC_DIGITAL_RF_TECH_424F)) {
  rc = digital_in_send_psl_req(ddev, target);
  if (!rc)
   goto exit;
 }

 rc = nfc_dep_link_is_up(ddev->nfc_dev, target->idx, NFC_COMM_ACTIVE,
    NFC_RF_INITIATOR);

 ddev->curr_nfc_dep_pni = 0;

exit:
 dev_kfree_skb(resp);

 if (rc)
  ddev->curr_protocol = 0;
}

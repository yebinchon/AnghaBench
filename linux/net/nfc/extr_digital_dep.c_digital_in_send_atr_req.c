
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_target {int nfcid2; scalar_t__ nfcid2_len; } ;
struct nfc_digital_dev {int (* skb_add_crc ) (struct sk_buff*) ;int local_payload_max; } ;
struct digital_atr_req {int pp; scalar_t__ br; scalar_t__ bs; scalar_t__ did; int nfcid3; int cmd; int dir; } ;
typedef int __u8 ;


 scalar_t__ DIGITAL_ATR_REQ_MAX_SIZE ;
 scalar_t__ DIGITAL_ATR_REQ_MIN_SIZE ;
 int DIGITAL_ATR_RES_RWT ;
 int DIGITAL_CMD_ATR_REQ ;
 int DIGITAL_GB_BIT ;
 int DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 int DIGITAL_PAYLOAD_BITS_TO_PP (int ) ;
 int DIGITAL_PAYLOAD_SIZE_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int NFC_NFCID2_MAXSIZE ;
 int NFC_NFCID3_MAXSIZE ;
 int PROTOCOL_ERR (char*) ;
 int digital_in_recv_atr_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int ,int ,struct nfc_target*) ;
 int digital_payload_size_to_bits (int ) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,scalar_t__) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int get_random_bytes (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct digital_atr_req*,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,size_t) ;
 int stub1 (struct sk_buff*) ;

int digital_in_send_atr_req(struct nfc_digital_dev *ddev,
       struct nfc_target *target, __u8 comm_mode, __u8 *gb,
       size_t gb_len)
{
 struct sk_buff *skb;
 struct digital_atr_req *atr_req;
 uint size;
 int rc;
 u8 payload_bits;

 size = DIGITAL_ATR_REQ_MIN_SIZE + gb_len;

 if (size > DIGITAL_ATR_REQ_MAX_SIZE) {
  PROTOCOL_ERR("14.6.1.1");
  return -EINVAL;
 }

 skb = digital_skb_alloc(ddev, size);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, sizeof(struct digital_atr_req));

 atr_req = (struct digital_atr_req *)skb->data;
 memset(atr_req, 0, sizeof(struct digital_atr_req));

 atr_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
 atr_req->cmd = DIGITAL_CMD_ATR_REQ;
 if (target->nfcid2_len)
  memcpy(atr_req->nfcid3, target->nfcid2, NFC_NFCID2_MAXSIZE);
 else
  get_random_bytes(atr_req->nfcid3, NFC_NFCID3_MAXSIZE);

 atr_req->did = 0;
 atr_req->bs = 0;
 atr_req->br = 0;

 ddev->local_payload_max = DIGITAL_PAYLOAD_SIZE_MAX;
 payload_bits = digital_payload_size_to_bits(ddev->local_payload_max);
 atr_req->pp = DIGITAL_PAYLOAD_BITS_TO_PP(payload_bits);

 if (gb_len) {
  atr_req->pp |= DIGITAL_GB_BIT;
  skb_put_data(skb, gb, gb_len);
 }

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 rc = digital_in_send_cmd(ddev, skb, DIGITAL_ATR_RES_RWT,
     digital_in_recv_atr_res, target);
 if (rc)
  kfree_skb(skb);

 return rc;
}

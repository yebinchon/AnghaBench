
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {scalar_t__ curr_nfc_dep_pni; int (* skb_add_crc ) (struct sk_buff*) ;int local_payload_max; int nfc_dev; } ;
struct digital_atr_res {int gb; int pp; int to; int nfcid3; int cmd; int dir; } ;
struct digital_atr_req {int * nfcid3; } ;


 int DIGITAL_CMD_ATR_RES ;
 int DIGITAL_GB_BIT ;
 int DIGITAL_NFC_DEP_FRAME_DIR_IN ;
 int DIGITAL_NFC_DEP_TG_MAX_WT ;
 int DIGITAL_PAYLOAD_BITS_TO_PP (int ) ;
 int DIGITAL_PAYLOAD_SIZE_MAX ;
 int ENOMEM ;
 int digital_payload_size_to_bits (int ) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_send_atr_res_complete ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int *,size_t) ;
 int memset (struct digital_atr_res*,int ,int) ;
 int * nfc_get_local_general_bytes (int ,size_t*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int digital_tg_send_atr_res(struct nfc_digital_dev *ddev,
       struct digital_atr_req *atr_req)
{
 struct digital_atr_res *atr_res;
 struct sk_buff *skb;
 u8 *gb, payload_bits;
 size_t gb_len;
 int rc;

 gb = nfc_get_local_general_bytes(ddev->nfc_dev, &gb_len);
 if (!gb)
  gb_len = 0;

 skb = digital_skb_alloc(ddev, sizeof(struct digital_atr_res) + gb_len);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, sizeof(struct digital_atr_res));
 atr_res = (struct digital_atr_res *)skb->data;

 memset(atr_res, 0, sizeof(struct digital_atr_res));

 atr_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
 atr_res->cmd = DIGITAL_CMD_ATR_RES;
 memcpy(atr_res->nfcid3, atr_req->nfcid3, sizeof(atr_req->nfcid3));
 atr_res->to = DIGITAL_NFC_DEP_TG_MAX_WT;

 ddev->local_payload_max = DIGITAL_PAYLOAD_SIZE_MAX;
 payload_bits = digital_payload_size_to_bits(ddev->local_payload_max);
 atr_res->pp = DIGITAL_PAYLOAD_BITS_TO_PP(payload_bits);

 if (gb_len) {
  skb_put(skb, gb_len);

  atr_res->pp |= DIGITAL_GB_BIT;
  memcpy(atr_res->gb, gb, gb_len);
 }

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 ddev->curr_nfc_dep_pni = 0;

 rc = digital_tg_send_cmd(ddev, skb, 999,
     digital_tg_send_atr_res_complete, ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}

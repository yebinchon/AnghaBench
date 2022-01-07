
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_res {int * rd; int * nfcid2; int cmd; } ;
struct digital_sensf_req {int rc; int sc2; int sc1; } ;


 int DIGITAL_CMD_SENSF_RES ;
 int DIGITAL_DRV_CAPS_TG_CRC (struct nfc_digital_dev*) ;
 int DIGITAL_SENSF_NFCID2_NFC_DEP_B1 ;
 int DIGITAL_SENSF_NFCID2_NFC_DEP_B2 ;

 int DIGITAL_SENSF_REQ_RC_NONE ;

 int DIGITAL_SENSF_RES_RD_AP_B1 ;
 int DIGITAL_SENSF_RES_RD_AP_B2 ;
 int ENOMEM ;
 int digital_skb_add_crc_f (struct sk_buff*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_tg_recv_atr_or_sensf_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int get_random_bytes (int *,int) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct digital_sensf_res*,int ,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int digital_tg_send_sensf_res(struct nfc_digital_dev *ddev,
         struct digital_sensf_req *sensf_req)
{
 struct sk_buff *skb;
 u8 size;
 int rc;
 struct digital_sensf_res *sensf_res;

 size = sizeof(struct digital_sensf_res);

 if (sensf_req->rc == DIGITAL_SENSF_REQ_RC_NONE)
  size -= sizeof(sensf_res->rd);

 skb = digital_skb_alloc(ddev, size);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, size);

 sensf_res = (struct digital_sensf_res *)skb->data;

 memset(sensf_res, 0, size);

 sensf_res->cmd = DIGITAL_CMD_SENSF_RES;
 sensf_res->nfcid2[0] = DIGITAL_SENSF_NFCID2_NFC_DEP_B1;
 sensf_res->nfcid2[1] = DIGITAL_SENSF_NFCID2_NFC_DEP_B2;
 get_random_bytes(&sensf_res->nfcid2[2], 6);

 switch (sensf_req->rc) {
 case 128:
  sensf_res->rd[0] = sensf_req->sc1;
  sensf_res->rd[1] = sensf_req->sc2;
  break;
 case 129:
  sensf_res->rd[0] = DIGITAL_SENSF_RES_RD_AP_B1;
  sensf_res->rd[1] = DIGITAL_SENSF_RES_RD_AP_B2;
  break;
 }

 *(u8 *)skb_push(skb, sizeof(u8)) = size + 1;

 if (!DIGITAL_DRV_CAPS_TG_CRC(ddev))
  digital_skb_add_crc_f(skb);

 rc = digital_tg_send_cmd(ddev, skb, 300,
     digital_tg_recv_atr_or_sensf_req, ((void*)0));
 if (rc)
  kfree_skb(skb);

 return rc;
}

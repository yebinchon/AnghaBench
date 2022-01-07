
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {struct sk_buff* saved_skb; struct sk_buff* chaining_skb; int (* skb_add_crc ) (struct sk_buff*) ;scalar_t__ curr_nfc_dep_pni; scalar_t__ did; } ;
struct digital_dep_req_res {scalar_t__ pfb; int cmd; int dir; } ;


 int DIGITAL_CMD_DEP_RES ;
 int DIGITAL_NFC_DEP_FRAME_DIR_IN ;
 scalar_t__ DIGITAL_NFC_DEP_PFB_DID_BIT ;
 scalar_t__ DIGITAL_NFC_DEP_PFB_PNI (scalar_t__) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* digital_send_dep_data_prep (struct nfc_digital_dev*,struct sk_buff*,struct digital_dep_req_res*,int *) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_recv_dep_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pskb_copy (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__*,int) ;
 int stub1 (struct sk_buff*) ;

int digital_tg_send_dep_res(struct nfc_digital_dev *ddev, struct sk_buff *skb)
{
 struct digital_dep_req_res *dep_res;
 struct sk_buff *chaining_skb, *tmp_skb;
 int rc;

 skb_push(skb, sizeof(struct digital_dep_req_res));

 dep_res = (struct digital_dep_req_res *)skb->data;

 dep_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
 dep_res->cmd = DIGITAL_CMD_DEP_RES;
 dep_res->pfb = ddev->curr_nfc_dep_pni;

 if (ddev->did) {
  dep_res->pfb |= DIGITAL_NFC_DEP_PFB_DID_BIT;

  skb_put_data(skb, &ddev->did, sizeof(ddev->did));
 }

 ddev->curr_nfc_dep_pni =
  DIGITAL_NFC_DEP_PFB_PNI(ddev->curr_nfc_dep_pni + 1);

 chaining_skb = ddev->chaining_skb;

 tmp_skb = digital_send_dep_data_prep(ddev, skb, dep_res, ((void*)0));
 if (IS_ERR(tmp_skb))
  return PTR_ERR(tmp_skb);

 digital_skb_push_dep_sod(ddev, tmp_skb);

 ddev->skb_add_crc(tmp_skb);

 ddev->saved_skb = pskb_copy(tmp_skb, GFP_KERNEL);

 rc = digital_tg_send_cmd(ddev, tmp_skb, 1500, digital_tg_recv_dep_req,
     ((void*)0));
 if (rc) {
  if (tmp_skb != skb)
   kfree_skb(tmp_skb);

  kfree_skb(chaining_skb);
  ddev->chaining_skb = ((void*)0);

  kfree_skb(ddev->saved_skb);
  ddev->saved_skb = ((void*)0);
 }

 return rc;
}

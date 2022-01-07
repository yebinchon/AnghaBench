
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {struct sk_buff* saved_skb; struct sk_buff* chaining_skb; int dep_rwt; int (* skb_add_crc ) (struct sk_buff*) ;scalar_t__ nack_count; scalar_t__ atn_count; int curr_nfc_dep_pni; } ;
struct digital_dep_req_res {int pfb; int cmd; int dir; } ;
struct digital_data_exch {int dummy; } ;


 int DIGITAL_CMD_DEP_REQ ;
 int DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int digital_in_recv_dep_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int ,int ,struct digital_data_exch*) ;
 struct sk_buff* digital_send_dep_data_prep (struct nfc_digital_dev*,struct sk_buff*,struct digital_dep_req_res*,struct digital_data_exch*) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pskb_copy (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

int digital_in_send_dep_req(struct nfc_digital_dev *ddev,
       struct nfc_target *target, struct sk_buff *skb,
       struct digital_data_exch *data_exch)
{
 struct digital_dep_req_res *dep_req;
 struct sk_buff *chaining_skb, *tmp_skb;
 int rc;

 skb_push(skb, sizeof(struct digital_dep_req_res));

 dep_req = (struct digital_dep_req_res *)skb->data;

 dep_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
 dep_req->cmd = DIGITAL_CMD_DEP_REQ;
 dep_req->pfb = ddev->curr_nfc_dep_pni;

 ddev->atn_count = 0;
 ddev->nack_count = 0;

 chaining_skb = ddev->chaining_skb;

 tmp_skb = digital_send_dep_data_prep(ddev, skb, dep_req, data_exch);
 if (IS_ERR(tmp_skb))
  return PTR_ERR(tmp_skb);

 digital_skb_push_dep_sod(ddev, tmp_skb);

 ddev->skb_add_crc(tmp_skb);

 ddev->saved_skb = pskb_copy(tmp_skb, GFP_KERNEL);

 rc = digital_in_send_cmd(ddev, tmp_skb, ddev->dep_rwt,
     digital_in_recv_dep_res, data_exch);
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

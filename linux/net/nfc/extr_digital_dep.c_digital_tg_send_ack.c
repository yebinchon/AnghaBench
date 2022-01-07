
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {int curr_nfc_dep_pni; struct sk_buff* saved_skb; int (* skb_add_crc ) (struct sk_buff*) ;int did; } ;
struct digital_dep_req_res {int pfb; int cmd; int dir; } ;
struct digital_data_exch {int dummy; } ;


 int DIGITAL_CMD_DEP_RES ;
 int DIGITAL_NFC_DEP_FRAME_DIR_IN ;
 int DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU ;
 int DIGITAL_NFC_DEP_PFB_DID_BIT ;
 int DIGITAL_NFC_DEP_PFB_PNI (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_recv_dep_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,struct digital_data_exch*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pskb_copy (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int digital_tg_send_ack(struct nfc_digital_dev *ddev,
          struct digital_data_exch *data_exch)
{
 struct digital_dep_req_res *dep_res;
 struct sk_buff *skb;
 int rc;

 skb = digital_skb_alloc(ddev, 1);
 if (!skb)
  return -ENOMEM;

 skb_push(skb, sizeof(struct digital_dep_req_res));

 dep_res = (struct digital_dep_req_res *)skb->data;

 dep_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
 dep_res->cmd = DIGITAL_CMD_DEP_RES;
 dep_res->pfb = DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU |
         ddev->curr_nfc_dep_pni;

 if (ddev->did) {
  dep_res->pfb |= DIGITAL_NFC_DEP_PFB_DID_BIT;

  skb_put_data(skb, &ddev->did, sizeof(ddev->did));
 }

 ddev->curr_nfc_dep_pni =
  DIGITAL_NFC_DEP_PFB_PNI(ddev->curr_nfc_dep_pni + 1);

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 ddev->saved_skb = pskb_copy(skb, GFP_KERNEL);

 rc = digital_tg_send_cmd(ddev, skb, 1500, digital_tg_recv_dep_req,
     data_exch);
 if (rc) {
  kfree_skb(skb);
  kfree_skb(ddev->saved_skb);
  ddev->saved_skb = ((void*)0);
 }

 return rc;
}

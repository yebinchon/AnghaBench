
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {scalar_t__ curr_nfc_dep_pni; int (* skb_add_crc ) (struct sk_buff*) ;} ;
struct digital_psl_res {scalar_t__ did; int cmd; int dir; } ;


 int DIGITAL_CMD_PSL_RES ;
 int DIGITAL_NFC_DEP_FRAME_DIR_IN ;
 int ENOMEM ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int ,int ,void*) ;
 int digital_tg_send_psl_res_complete ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int digital_tg_send_psl_res(struct nfc_digital_dev *ddev, u8 did,
       u8 rf_tech)
{
 struct digital_psl_res *psl_res;
 struct sk_buff *skb;
 int rc;

 skb = digital_skb_alloc(ddev, sizeof(struct digital_psl_res));
 if (!skb)
  return -ENOMEM;

 skb_put(skb, sizeof(struct digital_psl_res));

 psl_res = (struct digital_psl_res *)skb->data;

 psl_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
 psl_res->cmd = DIGITAL_CMD_PSL_RES;
 psl_res->did = did;

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 ddev->curr_nfc_dep_pni = 0;

 rc = digital_tg_send_cmd(ddev, skb, 0, digital_tg_send_psl_res_complete,
     (void *)(unsigned long)rf_tech);
 if (rc)
  kfree_skb(skb);

 return rc;
}

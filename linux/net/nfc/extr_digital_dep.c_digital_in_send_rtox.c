
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {int dep_rwt; int (* skb_add_crc ) (struct sk_buff*) ;} ;
struct digital_dep_req_res {int pfb; int cmd; int dir; } ;
struct digital_data_exch {int dummy; } ;


 int DIGITAL_CMD_DEP_REQ ;
 int DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 size_t DIGITAL_NFC_DEP_IN_MAX_WT ;
 int DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU ;
 int DIGITAL_NFC_DEP_PFB_TIMEOUT_BIT ;
 int ENOMEM ;
 int digital_in_recv_dep_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,struct digital_data_exch*) ;
 int* digital_rwt_map ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int digital_in_send_rtox(struct nfc_digital_dev *ddev,
    struct digital_data_exch *data_exch, u8 rtox)
{
 struct digital_dep_req_res *dep_req;
 struct sk_buff *skb;
 int rc;
 u16 rwt_int;

 rwt_int = ddev->dep_rwt * rtox;
 if (rwt_int > digital_rwt_map[DIGITAL_NFC_DEP_IN_MAX_WT])
  rwt_int = digital_rwt_map[DIGITAL_NFC_DEP_IN_MAX_WT];

 skb = digital_skb_alloc(ddev, 1);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, rtox);

 skb_push(skb, sizeof(struct digital_dep_req_res));

 dep_req = (struct digital_dep_req_res *)skb->data;

 dep_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
 dep_req->cmd = DIGITAL_CMD_DEP_REQ;
 dep_req->pfb = DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU |
         DIGITAL_NFC_DEP_PFB_TIMEOUT_BIT;

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 rc = digital_in_send_cmd(ddev, skb, rwt_int,
     digital_in_recv_dep_res, data_exch);
 if (rc)
  kfree_skb(skb);

 return rc;
}

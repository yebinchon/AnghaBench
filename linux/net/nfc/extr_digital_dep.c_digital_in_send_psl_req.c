
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dep_rwt; int (* skb_add_crc ) (struct sk_buff*) ;void* remote_payload_max; void* local_payload_max; } ;
struct digital_psl_req {int brs; int fsl; scalar_t__ did; int cmd; int dir; } ;


 int DIGITAL_CMD_PSL_REQ ;
 int DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 int DIGITAL_PAYLOAD_BITS_TO_FSL (void*) ;
 int ENOMEM ;
 int digital_in_recv_psl_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int ,int ,struct nfc_target*) ;
 void* digital_payload_size_to_bits (void*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int digital_skb_push_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 void* min (void*,void*) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int digital_in_send_psl_req(struct nfc_digital_dev *ddev,
       struct nfc_target *target)
{
 struct sk_buff *skb;
 struct digital_psl_req *psl_req;
 int rc;
 u8 payload_size, payload_bits;

 skb = digital_skb_alloc(ddev, sizeof(*psl_req));
 if (!skb)
  return -ENOMEM;

 skb_put(skb, sizeof(*psl_req));

 psl_req = (struct digital_psl_req *)skb->data;

 psl_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
 psl_req->cmd = DIGITAL_CMD_PSL_REQ;
 psl_req->did = 0;
 psl_req->brs = (0x2 << 3) | 0x2;

 payload_size = min(ddev->local_payload_max, ddev->remote_payload_max);
 payload_bits = digital_payload_size_to_bits(payload_size);
 psl_req->fsl = DIGITAL_PAYLOAD_BITS_TO_FSL(payload_bits);

 ddev->local_payload_max = payload_size;
 ddev->remote_payload_max = payload_size;

 digital_skb_push_dep_sod(ddev, skb);

 ddev->skb_add_crc(skb);

 rc = digital_in_send_cmd(ddev, skb, ddev->dep_rwt,
     digital_in_recv_psl_res, target);
 if (rc)
  kfree_skb(skb);

 return rc;
}

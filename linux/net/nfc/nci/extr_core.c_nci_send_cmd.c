
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_dev {int cmd_work; int cmd_wq; int cmd_q; } ;
struct nci_ctrl_hdr {scalar_t__ plen; int oid; int gid; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NCI_CTRL_HDR_SIZE ;
 int NCI_MT_CMD_PKT ;
 int NCI_PBF_LAST ;
 int nci_mt_set (scalar_t__*,int ) ;
 int nci_opcode_gid (int ) ;
 int nci_opcode_oid (int ) ;
 int nci_pbf_set (scalar_t__*,int ) ;
 struct sk_buff* nci_skb_alloc (struct nci_dev*,scalar_t__,int ) ;
 int pr_debug (char*,int ,scalar_t__) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 struct nci_ctrl_hdr* skb_put (struct sk_buff*,scalar_t__) ;
 int skb_put_data (struct sk_buff*,void*,scalar_t__) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int nci_send_cmd(struct nci_dev *ndev, __u16 opcode, __u8 plen, void *payload)
{
 struct nci_ctrl_hdr *hdr;
 struct sk_buff *skb;

 pr_debug("opcode 0x%x, plen %d\n", opcode, plen);

 skb = nci_skb_alloc(ndev, (NCI_CTRL_HDR_SIZE + plen), GFP_KERNEL);
 if (!skb) {
  pr_err("no memory for command\n");
  return -ENOMEM;
 }

 hdr = skb_put(skb, NCI_CTRL_HDR_SIZE);
 hdr->gid = nci_opcode_gid(opcode);
 hdr->oid = nci_opcode_oid(opcode);
 hdr->plen = plen;

 nci_mt_set((__u8 *)hdr, NCI_MT_CMD_PKT);
 nci_pbf_set((__u8 *)hdr, NCI_PBF_LAST);

 if (plen)
  skb_put_data(skb, payload, plen);

 skb_queue_tail(&ndev->cmd_q, skb);
 queue_work(ndev->cmd_wq, &ndev->cmd_work);

 return 0;
}

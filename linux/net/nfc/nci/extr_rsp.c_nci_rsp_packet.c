
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct nci_dev {int cmd_work; int cmd_wq; int cmd_q; int cmd_cnt; int cmd_timer; } ;
typedef int __u16 ;


 int ENOTSUPP ;
 int NCI_CTRL_HDR_SIZE ;
 scalar_t__ NCI_GID_PROPRIETARY ;
 int atomic_set (int *,int) ;
 int del_timer (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int nci_core_conn_close_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_conn_create_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_init_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_reset_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_rsp_packet (struct nci_dev*,int,struct sk_buff*) ;
 int nci_core_set_config_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_nfcee_discover_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_nfcee_mode_set_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_opcode (int ) ;
 scalar_t__ nci_opcode_gid (int) ;
 int nci_opcode_oid (int) ;
 int nci_pbf (int ) ;
 int nci_plen (int ) ;
 int nci_prop_rsp_packet (struct nci_dev*,int,struct sk_buff*) ;
 int nci_rf_deactivate_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_rf_disc_map_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_rf_disc_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_rf_disc_select_rsp_packet (struct nci_dev*,struct sk_buff*) ;
 int pr_debug (char*,int ,scalar_t__,int ,int ) ;
 int pr_err (char*,int) ;
 int queue_work (int ,int *) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;

void nci_rsp_packet(struct nci_dev *ndev, struct sk_buff *skb)
{
 __u16 rsp_opcode = nci_opcode(skb->data);


 del_timer(&ndev->cmd_timer);

 pr_debug("NCI RX: MT=rsp, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\n",
   nci_pbf(skb->data),
   nci_opcode_gid(rsp_opcode),
   nci_opcode_oid(rsp_opcode),
   nci_plen(skb->data));


 skb_pull(skb, NCI_CTRL_HDR_SIZE);

 if (nci_opcode_gid(rsp_opcode) == NCI_GID_PROPRIETARY) {
  if (nci_prop_rsp_packet(ndev, rsp_opcode, skb) == -ENOTSUPP) {
   pr_err("unsupported rsp opcode 0x%x\n",
          rsp_opcode);
  }

  goto end;
 }

 switch (rsp_opcode) {
 case 135:
  nci_core_reset_rsp_packet(ndev, skb);
  break;

 case 136:
  nci_core_init_rsp_packet(ndev, skb);
  break;

 case 134:
  nci_core_set_config_rsp_packet(ndev, skb);
  break;

 case 137:
  nci_core_conn_create_rsp_packet(ndev, skb);
  break;

 case 138:
  nci_core_conn_close_rsp_packet(ndev, skb);
  break;

 case 130:
  nci_rf_disc_map_rsp_packet(ndev, skb);
  break;

 case 129:
  nci_rf_disc_rsp_packet(ndev, skb);
  break;

 case 128:
  nci_rf_disc_select_rsp_packet(ndev, skb);
  break;

 case 131:
  nci_rf_deactivate_rsp_packet(ndev, skb);
  break;

 case 133:
  nci_nfcee_discover_rsp_packet(ndev, skb);
  break;

 case 132:
  nci_nfcee_mode_set_rsp_packet(ndev, skb);
  break;

 default:
  pr_err("unknown rsp opcode 0x%x\n", rsp_opcode);
  break;
 }

 nci_core_rsp_packet(ndev, rsp_opcode, skb);
end:
 kfree_skb(skb);


 atomic_set(&ndev->cmd_cnt, 1);
 if (!skb_queue_empty(&ndev->cmd_q))
  queue_work(ndev->cmd_wq, &ndev->cmd_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct nci_dev {int dummy; } ;
typedef int __u16 ;


 int ENOTSUPP ;
 int NCI_CTRL_HDR_SIZE ;
 scalar_t__ NCI_GID_PROPRIETARY ;
 int kfree_skb (struct sk_buff*) ;
 int nci_core_conn_credits_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_conn_intf_error_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_generic_error_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_core_ntf_packet (struct nci_dev*,int,struct sk_buff*) ;
 int nci_nfcee_action_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_nfcee_discover_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_opcode (int ) ;
 scalar_t__ nci_opcode_gid (int) ;
 int nci_opcode_oid (int) ;
 int nci_pbf (int ) ;
 int nci_plen (int ) ;
 int nci_prop_ntf_packet (struct nci_dev*,int,struct sk_buff*) ;
 int nci_rf_deactivate_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_rf_discover_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int nci_rf_intf_activated_ntf_packet (struct nci_dev*,struct sk_buff*) ;
 int pr_debug (char*,int ,scalar_t__,int ,int ) ;
 int pr_err (char*,int) ;
 int skb_pull (struct sk_buff*,int ) ;

void nci_ntf_packet(struct nci_dev *ndev, struct sk_buff *skb)
{
 __u16 ntf_opcode = nci_opcode(skb->data);

 pr_debug("NCI RX: MT=ntf, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\n",
   nci_pbf(skb->data),
   nci_opcode_gid(ntf_opcode),
   nci_opcode_oid(ntf_opcode),
   nci_plen(skb->data));


 skb_pull(skb, NCI_CTRL_HDR_SIZE);

 if (nci_opcode_gid(ntf_opcode) == NCI_GID_PROPRIETARY) {
  if (nci_prop_ntf_packet(ndev, ntf_opcode, skb) == -ENOTSUPP) {
   pr_err("unsupported ntf opcode 0x%x\n",
          ntf_opcode);
  }

  goto end;
 }

 switch (ntf_opcode) {
 case 135:
  nci_core_conn_credits_ntf_packet(ndev, skb);
  break;

 case 134:
  nci_core_generic_error_ntf_packet(ndev, skb);
  break;

 case 133:
  nci_core_conn_intf_error_ntf_packet(ndev, skb);
  break;

 case 130:
  nci_rf_discover_ntf_packet(ndev, skb);
  break;

 case 129:
  nci_rf_intf_activated_ntf_packet(ndev, skb);
  break;

 case 131:
  nci_rf_deactivate_ntf_packet(ndev, skb);
  break;

 case 132:
  nci_nfcee_discover_ntf_packet(ndev, skb);
  break;

 case 128:
  nci_nfcee_action_ntf_packet(ndev, skb);
  break;

 default:
  pr_err("unknown ntf opcode 0x%x\n", ntf_opcode);
  break;
 }

 nci_core_ntf_packet(ndev, ntf_opcode, skb);
end:
 kfree_skb(skb);
}

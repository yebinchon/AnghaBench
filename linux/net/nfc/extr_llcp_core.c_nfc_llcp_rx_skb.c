
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct nfc_llcp_local {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;
 int nfc_llcp_dsap (struct sk_buff*) ;
 int nfc_llcp_ptype (struct sk_buff*) ;
 int nfc_llcp_recv_agf (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_cc (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_connect (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_disc (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_dm (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_hdlc (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_snl (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_recv_ui (struct nfc_llcp_local*,struct sk_buff*) ;
 int nfc_llcp_ssap (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 int print_hex_dump_debug (char*,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void nfc_llcp_rx_skb(struct nfc_llcp_local *local, struct sk_buff *skb)
{
 u8 dsap, ssap, ptype;

 ptype = nfc_llcp_ptype(skb);
 dsap = nfc_llcp_dsap(skb);
 ssap = nfc_llcp_ssap(skb);

 pr_debug("ptype 0x%x dsap 0x%x ssap 0x%x\n", ptype, dsap, ssap);

 if (ptype != 129)
  print_hex_dump_debug("LLCP Rx: ", DUMP_PREFIX_OFFSET, 16, 1,
         skb->data, skb->len, 1);

 switch (ptype) {
 case 129:
  pr_debug("SYMM\n");
  break;

 case 128:
  pr_debug("UI\n");
  nfc_llcp_recv_ui(local, skb);
  break;

 case 136:
  pr_debug("CONNECT\n");
  nfc_llcp_recv_connect(local, skb);
  break;

 case 135:
  pr_debug("DISC\n");
  nfc_llcp_recv_disc(local, skb);
  break;

 case 137:
  pr_debug("CC\n");
  nfc_llcp_recv_cc(local, skb);
  break;

 case 134:
  pr_debug("DM\n");
  nfc_llcp_recv_dm(local, skb);
  break;

 case 130:
  pr_debug("SNL\n");
  nfc_llcp_recv_snl(local, skb);
  break;

 case 133:
 case 131:
 case 132:
  pr_debug("I frame\n");
  nfc_llcp_recv_hdlc(local, skb);
  break;

 case 138:
  pr_debug("AGF frame\n");
  nfc_llcp_recv_agf(local, skb);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int target_idx; } ;
struct nfc_dev {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LLCP_HEADER_SIZE ;
 int LLCP_PDU_SYMM ;
 int NFC_DIRECTION_TX ;
 scalar_t__ NFC_HEADER_SIZE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 struct sk_buff* llcp_add_header (struct sk_buff*,int ,int ,int ) ;
 int nfc_data_exchange (struct nfc_dev*,int ,struct sk_buff*,int ,struct nfc_llcp_local*) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;
 int nfc_llcp_recv ;
 int nfc_llcp_send_to_raw_sock (struct nfc_llcp_local*,struct sk_buff*,int ) ;
 int pr_debug (char*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

int nfc_llcp_send_symm(struct nfc_dev *dev)
{
 struct sk_buff *skb;
 struct nfc_llcp_local *local;
 u16 size = 0;

 pr_debug("Sending SYMM\n");

 local = nfc_llcp_find_local(dev);
 if (local == ((void*)0))
  return -ENODEV;

 size += LLCP_HEADER_SIZE;
 size += dev->tx_headroom + dev->tx_tailroom + NFC_HEADER_SIZE;

 skb = alloc_skb(size, GFP_KERNEL);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_reserve(skb, dev->tx_headroom + NFC_HEADER_SIZE);

 skb = llcp_add_header(skb, 0, 0, LLCP_PDU_SYMM);

 __net_timestamp(skb);

 nfc_llcp_send_to_raw_sock(local, skb, NFC_DIRECTION_TX);

 return nfc_data_exchange(dev, local->target_idx, skb,
     nfc_llcp_recv, local);
}

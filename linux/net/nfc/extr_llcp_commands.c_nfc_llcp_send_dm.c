
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int tx_queue; struct nfc_dev* dev; } ;
struct nfc_dev {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LLCP_HEADER_SIZE ;
 int LLCP_PDU_DM ;
 scalar_t__ NFC_HEADER_SIZE ;
 struct sk_buff* alloc_skb (int,int ) ;
 struct sk_buff* llcp_add_header (struct sk_buff*,int ,int ,int ) ;
 int pr_debug (char*,int ) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

int nfc_llcp_send_dm(struct nfc_llcp_local *local, u8 ssap, u8 dsap, u8 reason)
{
 struct sk_buff *skb;
 struct nfc_dev *dev;
 u16 size = 1;

 pr_debug("Sending DM reason 0x%x\n", reason);

 if (local == ((void*)0))
  return -ENODEV;

 dev = local->dev;
 if (dev == ((void*)0))
  return -ENODEV;

 size += LLCP_HEADER_SIZE;
 size += dev->tx_headroom + dev->tx_tailroom + NFC_HEADER_SIZE;

 skb = alloc_skb(size, GFP_KERNEL);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_reserve(skb, dev->tx_headroom + NFC_HEADER_SIZE);

 skb = llcp_add_header(skb, dsap, ssap, LLCP_PDU_DM);

 skb_put_data(skb, &reason, 1);

 skb_queue_head(&local->tx_queue, skb);

 return 0;
}

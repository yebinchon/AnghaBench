
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {struct nfc_dev* dev; } ;
struct nfc_dev {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;


 int ENODEV ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ LLCP_HEADER_SIZE ;
 int LLCP_PDU_SNL ;
 int LLCP_SAP_SDP ;
 scalar_t__ NFC_HEADER_SIZE ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 struct sk_buff* llcp_add_header (struct sk_buff*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *nfc_llcp_allocate_snl(struct nfc_llcp_local *local,
          size_t tlv_length)
{
 struct sk_buff *skb;
 struct nfc_dev *dev;
 u16 size = 0;

 if (local == ((void*)0))
  return ERR_PTR(-ENODEV);

 dev = local->dev;
 if (dev == ((void*)0))
  return ERR_PTR(-ENODEV);

 size += LLCP_HEADER_SIZE;
 size += dev->tx_headroom + dev->tx_tailroom + NFC_HEADER_SIZE;
 size += tlv_length;

 skb = alloc_skb(size, GFP_KERNEL);
 if (skb == ((void*)0))
  return ERR_PTR(-ENOMEM);

 skb_reserve(skb, dev->tx_headroom + NFC_HEADER_SIZE);

 skb = llcp_add_header(skb, LLCP_SAP_SDP, LLCP_SAP_SDP, LLCP_PDU_SNL);

 return skb;
}

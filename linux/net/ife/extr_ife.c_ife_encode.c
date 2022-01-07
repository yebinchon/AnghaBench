
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; TYPE_1__* dev; } ;
struct ifeheadr {void* tlv_data; int metalen; } ;
struct ethhdr {int dummy; } ;
struct TYPE_2__ {int hard_header_len; } ;


 int IFE_METAHDRLEN ;
 int __skb_push (struct sk_buff*,int) ;
 int htons (int) ;
 int memcpy (scalar_t__,struct ethhdr*,int) ;
 int skb_cow_head (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void *ife_encode(struct sk_buff *skb, u16 metalen)
{



 int hdrm = metalen + IFE_METAHDRLEN;
 int total_push = hdrm + skb->dev->hard_header_len;
 struct ifeheadr *ifehdr;
 struct ethhdr *iethh;
 int skboff = 0;
 int err;

 err = skb_cow_head(skb, total_push);
 if (unlikely(err))
  return ((void*)0);

 iethh = (struct ethhdr *) skb->data;

 __skb_push(skb, total_push);
 memcpy(skb->data, iethh, skb->dev->hard_header_len);
 skb_reset_mac_header(skb);
 skboff += skb->dev->hard_header_len;


 ifehdr = (struct ifeheadr *) (skb->data + skboff);
 metalen += IFE_METAHDRLEN;
 ifehdr->metalen = htons(metalen);

 return ifehdr->tlv_data;
}

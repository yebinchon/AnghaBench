
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct ipv6hdr {int dummy; } ;
struct ip6_fraglist_iter {unsigned int hlen; int tmp_hdr; void* nexthdr; void* frag_id; scalar_t__ offset; int frag; } ;
struct frag_hdr {void* identification; void* frag_off; scalar_t__ reserved; void* nexthdr; } ;
typedef void* __be32 ;
struct TYPE_4__ {void* payload_len; } ;
struct TYPE_3__ {int frag_list; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned int IP6_MF ;
 void* NEXTHDR_FRAGMENT ;
 int __skb_pull (struct sk_buff*,unsigned int) ;
 struct frag_hdr* __skb_push (struct sk_buff*,unsigned int) ;
 void* htons (unsigned int) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kmemdup (int ,unsigned int,int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int skb_frag_list_init (struct sk_buff*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 unsigned int skb_pagelen (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int ip6_fraglist_init(struct sk_buff *skb, unsigned int hlen, u8 *prevhdr,
        u8 nexthdr, __be32 frag_id,
        struct ip6_fraglist_iter *iter)
{
 unsigned int first_len;
 struct frag_hdr *fh;


 *prevhdr = NEXTHDR_FRAGMENT;
 iter->tmp_hdr = kmemdup(skb_network_header(skb), hlen, GFP_ATOMIC);
 if (!iter->tmp_hdr)
  return -ENOMEM;

 iter->frag = skb_shinfo(skb)->frag_list;
 skb_frag_list_init(skb);

 iter->offset = 0;
 iter->hlen = hlen;
 iter->frag_id = frag_id;
 iter->nexthdr = nexthdr;

 __skb_pull(skb, hlen);
 fh = __skb_push(skb, sizeof(struct frag_hdr));
 __skb_push(skb, hlen);
 skb_reset_network_header(skb);
 memcpy(skb_network_header(skb), iter->tmp_hdr, hlen);

 fh->nexthdr = nexthdr;
 fh->reserved = 0;
 fh->frag_off = htons(IP6_MF);
 fh->identification = frag_id;

 first_len = skb_pagelen(skb);
 skb->data_len = first_len - skb_headlen(skb);
 skb->len = first_len;
 ipv6_hdr(skb)->payload_len = htons(first_len - sizeof(struct ipv6hdr));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct iphdr {void* frag_off; void* tot_len; } ;
struct ip_fraglist_iter {unsigned int hlen; struct iphdr* iph; scalar_t__ offset; int frag; } ;
struct TYPE_2__ {int frag_list; } ;


 unsigned int IP_MF ;
 void* htons (unsigned int) ;
 int ip_send_check (struct iphdr*) ;
 int skb_frag_list_init (struct sk_buff*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 unsigned int skb_pagelen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

void ip_fraglist_init(struct sk_buff *skb, struct iphdr *iph,
        unsigned int hlen, struct ip_fraglist_iter *iter)
{
 unsigned int first_len = skb_pagelen(skb);

 iter->frag = skb_shinfo(skb)->frag_list;
 skb_frag_list_init(skb);

 iter->offset = 0;
 iter->iph = iph;
 iter->hlen = hlen;

 skb->data_len = first_len - skb_headlen(skb);
 skb->len = first_len;
 iph->tot_len = htons(first_len);
 iph->frag_off = htons(IP_MF);
 ip_send_check(iph);
}

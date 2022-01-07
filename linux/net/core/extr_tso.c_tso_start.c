
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tso_t {size_t next_frag_idx; int ipv6; scalar_t__ size; scalar_t__ data; int tcp_seq; int ip_id; } ;
struct sk_buff {scalar_t__ data; } ;
typedef int skb_frag_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {size_t nr_frags; int * frags; } ;
struct TYPE_4__ {int seq; } ;


 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 scalar_t__ skb_frag_address (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

void tso_start(struct sk_buff *skb, struct tso_t *tso)
{
 int hdr_len = skb_transport_offset(skb) + tcp_hdrlen(skb);

 tso->ip_id = ntohs(ip_hdr(skb)->id);
 tso->tcp_seq = ntohl(tcp_hdr(skb)->seq);
 tso->next_frag_idx = 0;
 tso->ipv6 = vlan_get_protocol(skb) == htons(ETH_P_IPV6);


 tso->size = skb_headlen(skb) - hdr_len;
 tso->data = skb->data + hdr_len;
 if ((tso->size == 0) &&
     (tso->next_frag_idx < skb_shinfo(skb)->nr_frags)) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[tso->next_frag_idx];


  tso->size = skb_frag_size(frag);
  tso->data = skb_frag_address(frag);
  tso->next_frag_idx++;
 }
}

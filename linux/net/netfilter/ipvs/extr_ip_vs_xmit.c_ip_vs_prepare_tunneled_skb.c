
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ sk; } ;
struct ipv6hdr {int hop_limit; int payload_len; } ;
struct iphdr {int frag_off; int tot_len; int ttl; } ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;
typedef int __be16 ;


 int AF_INET6 ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int INET_ECN_encapsulate (int ,int ) ;
 int IPPROTO_IPIP ;
 int IPPROTO_IPV6 ;
 int IP_DF ;
 int consume_skb (struct sk_buff*) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int ip_vs_drop_early_demux_sk (struct sk_buff*) ;
 int ipv4_get_dsfield (struct iphdr*) ;
 int ipv6_get_dsfield (struct ipv6hdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,unsigned int) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
ip_vs_prepare_tunneled_skb(struct sk_buff *skb, int skb_af,
      unsigned int max_headroom, __u8 *next_protocol,
      __u32 *payload_len, __u8 *dsfield, __u8 *ttl,
      __be16 *df)
{
 struct sk_buff *new_skb = ((void*)0);
 struct iphdr *old_iph = ((void*)0);
 __u8 old_dsfield;




 ip_vs_drop_early_demux_sk(skb);

 if (skb_headroom(skb) < max_headroom || skb_cloned(skb)) {
  new_skb = skb_realloc_headroom(skb, max_headroom);
  if (!new_skb)
   goto error;
  if (skb->sk)
   skb_set_owner_w(new_skb, skb->sk);
  consume_skb(skb);
  skb = new_skb;
 }
 {
  old_iph = ip_hdr(skb);

  if (df)
   *df = (old_iph->frag_off & htons(IP_DF));
  *next_protocol = IPPROTO_IPIP;


  ip_send_check(old_iph);
  old_dsfield = ipv4_get_dsfield(old_iph);
  *ttl = old_iph->ttl;
  if (payload_len)
   *payload_len = ntohs(old_iph->tot_len);
 }


 *dsfield = INET_ECN_encapsulate(old_dsfield, old_dsfield);

 return skb;
error:
 kfree_skb(skb);
 return ERR_PTR(-ENOMEM);
}

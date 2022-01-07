
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_protocol; int sk_priority; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; int tstamp; int mark; int priority; int ignore_df; int * sk; int * destructor; scalar_t__ truesize; int data_len; struct sk_buff* next; } ;
struct rtable {scalar_t__ rt_type; int dst; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; int tos; scalar_t__ ttl; scalar_t__ protocol; int frag_off; } ;
struct ip_options {int optlen; } ;
struct inet_sock {scalar_t__ pmtudisc; scalar_t__ mc_ttl; int tos; } ;
struct inet_cork {int flags; scalar_t__ ttl; int tos; int * dst; int transmit_time; int mark; int priority; int addr; struct ip_options* opt; } ;
struct icmphdr {int type; } ;
struct flowi4 {int dummy; } ;
typedef scalar_t__ __u8 ;
typedef int __be16 ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int IPCORK_OPT ;
 scalar_t__ IPPROTO_ICMP ;
 int IP_DF ;
 scalar_t__ IP_PMTUDISC_DO ;
 scalar_t__ IP_PMTUDISC_PROBE ;
 scalar_t__ RTN_MULTICAST ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_pull (struct sk_buff*,int ) ;
 scalar_t__ dst_mtu (int *) ;
 int htons (int ) ;
 int icmp_out_count (struct net*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_copy_addrs (struct iphdr*,struct flowi4*) ;
 int ip_cork_release (struct inet_cork*) ;
 scalar_t__ ip_dont_fragment (struct sock*,int *) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_options_build (struct sk_buff*,struct ip_options*,int ,struct rtable*,int ) ;
 int ip_select_ident (struct net*,struct sk_buff*,struct sock*) ;
 scalar_t__ ip_select_ttl (struct inet_sock*,int *) ;
 int ip_sk_ignore_df (struct sock*) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;

struct sk_buff *__ip_make_skb(struct sock *sk,
         struct flowi4 *fl4,
         struct sk_buff_head *queue,
         struct inet_cork *cork)
{
 struct sk_buff *skb, *tmp_skb;
 struct sk_buff **tail_skb;
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 struct ip_options *opt = ((void*)0);
 struct rtable *rt = (struct rtable *)cork->dst;
 struct iphdr *iph;
 __be16 df = 0;
 __u8 ttl;

 skb = __skb_dequeue(queue);
 if (!skb)
  goto out;
 tail_skb = &(skb_shinfo(skb)->frag_list);


 if (skb->data < skb_network_header(skb))
  __skb_pull(skb, skb_network_offset(skb));
 while ((tmp_skb = __skb_dequeue(queue)) != ((void*)0)) {
  __skb_pull(tmp_skb, skb_network_header_len(skb));
  *tail_skb = tmp_skb;
  tail_skb = &(tmp_skb->next);
  skb->len += tmp_skb->len;
  skb->data_len += tmp_skb->len;
  skb->truesize += tmp_skb->truesize;
  tmp_skb->destructor = ((void*)0);
  tmp_skb->sk = ((void*)0);
 }





 skb->ignore_df = ip_sk_ignore_df(sk);




 if (inet->pmtudisc == IP_PMTUDISC_DO ||
     inet->pmtudisc == IP_PMTUDISC_PROBE ||
     (skb->len <= dst_mtu(&rt->dst) &&
      ip_dont_fragment(sk, &rt->dst)))
  df = htons(IP_DF);

 if (cork->flags & IPCORK_OPT)
  opt = cork->opt;

 if (cork->ttl != 0)
  ttl = cork->ttl;
 else if (rt->rt_type == RTN_MULTICAST)
  ttl = inet->mc_ttl;
 else
  ttl = ip_select_ttl(inet, &rt->dst);

 iph = ip_hdr(skb);
 iph->version = 4;
 iph->ihl = 5;
 iph->tos = (cork->tos != -1) ? cork->tos : inet->tos;
 iph->frag_off = df;
 iph->ttl = ttl;
 iph->protocol = sk->sk_protocol;
 ip_copy_addrs(iph, fl4);
 ip_select_ident(net, skb, sk);

 if (opt) {
  iph->ihl += opt->optlen>>2;
  ip_options_build(skb, opt, cork->addr, rt, 0);
 }

 skb->priority = (cork->tos != -1) ? cork->priority: sk->sk_priority;
 skb->mark = cork->mark;
 skb->tstamp = cork->transmit_time;




 cork->dst = ((void*)0);
 skb_dst_set(skb, &rt->dst);

 if (iph->protocol == IPPROTO_ICMP)
  icmp_out_count(net, ((struct icmphdr *)
   skb_transport_header(skb))->type);

 ip_cork_release(cork);
out:
 return skb;
}

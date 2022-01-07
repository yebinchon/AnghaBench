
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct udphdr {int dest; int source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_3__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int saddr; int daddr; } ;
struct inet_sock {int recverr; int pmtudisc; } ;
struct TYPE_6__ {int ifindex; } ;
struct TYPE_5__ {int fatal; int errno; } ;
struct TYPE_4__ {int type; int code; } ;


 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int ENOENT ;
 int EPROTO ;
 struct sock* ERR_PTR (int ) ;

 int const ICMP_FRAG_NEEDED ;
 int ICMP_MIB_INERRORS ;




 int IP_PMTUDISC_DONT ;
 scalar_t__ IS_ERR (struct sock*) ;
 int const NR_ICMP_UNREACH ;
 int PTR_ERR (struct sock*) ;
 scalar_t__ TCP_ESTABLISHED ;
 int __ICMP_INC_STATS (struct net*,int ) ;
 struct sock* __udp4_lib_err_encap (struct net*,struct iphdr const*,struct udphdr*,struct udp_table*,struct sk_buff*,int ) ;
 struct sock* __udp4_lib_lookup (struct net*,int ,int ,int ,int ,int ,int ,struct udp_table*,int *) ;
 struct net* dev_net (TYPE_3__*) ;
 TYPE_2__* icmp_err_convert ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 int inet_sdif (struct sk_buff*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_icmp_error (struct sock*,struct sk_buff*,int,int ,int ,int *) ;
 int ipv4_sk_redirect (struct sk_buff*,struct sock*) ;
 int ipv4_sk_update_pmtu (struct sk_buff*,struct sock*,int ) ;
 scalar_t__ static_branch_unlikely (int *) ;
 int stub1 (struct sock*) ;
 int udp_encap_needed_key ;

int __udp4_lib_err(struct sk_buff *skb, u32 info, struct udp_table *udptable)
{
 struct inet_sock *inet;
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 struct udphdr *uh = (struct udphdr *)(skb->data+(iph->ihl<<2));
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 bool tunnel = 0;
 struct sock *sk;
 int harderr;
 int err;
 struct net *net = dev_net(skb->dev);

 sk = __udp4_lib_lookup(net, iph->daddr, uh->dest,
          iph->saddr, uh->source, skb->dev->ifindex,
          inet_sdif(skb), udptable, ((void*)0));
 if (!sk) {

  sk = ERR_PTR(-ENOENT);
  if (static_branch_unlikely(&udp_encap_needed_key)) {
   sk = __udp4_lib_err_encap(net, iph, uh, udptable, skb,
        info);
   if (!sk)
    return 0;
  }

  if (IS_ERR(sk)) {
   __ICMP_INC_STATS(net, ICMP_MIB_INERRORS);
   return PTR_ERR(sk);
  }

  tunnel = 1;
 }

 err = 0;
 harderr = 0;
 inet = inet_sk(sk);

 switch (type) {
 default:
 case 128:
  err = EHOSTUNREACH;
  break;
 case 129:
  goto out;
 case 131:
  err = EPROTO;
  harderr = 1;
  break;
 case 132:
  if (code == ICMP_FRAG_NEEDED) {
   ipv4_sk_update_pmtu(skb, sk, info);
   if (inet->pmtudisc != IP_PMTUDISC_DONT) {
    err = EMSGSIZE;
    harderr = 1;
    break;
   }
   goto out;
  }
  err = EHOSTUNREACH;
  if (code <= NR_ICMP_UNREACH) {
   harderr = icmp_err_convert[code].fatal;
   err = icmp_err_convert[code].errno;
  }
  break;
 case 130:
  ipv4_sk_redirect(skb, sk);
  goto out;
 }





 if (tunnel) {

  goto out;
 }
 if (!inet->recverr) {
  if (!harderr || sk->sk_state != TCP_ESTABLISHED)
   goto out;
 } else
  ip_icmp_error(sk, skb, err, uh->dest, info, (u8 *)(uh+1));

 sk->sk_err = err;
 sk->sk_error_report(sk);
out:
 return 0;
}

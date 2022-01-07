
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int source; scalar_t__ dest; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dev; } ;
struct nft_tproxy {int sreg_addr; int sreg_port; } ;
struct TYPE_2__ {void* code; } ;
struct nft_regs {TYPE_1__ verdict; scalar_t__* data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_expr {int dummy; } ;
struct iphdr {int saddr; int protocol; scalar_t__ daddr; } ;
typedef int _hdr ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 void* NFT_BREAK ;
 int NF_TPROXY_LOOKUP_ESTABLISHED ;
 int NF_TPROXY_LOOKUP_LISTENER ;
 scalar_t__ TCP_TIME_WAIT ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int nf_tproxy_assign_sock (struct sk_buff*,struct sock*) ;
 struct sock* nf_tproxy_get_sock_v4 (int ,struct sk_buff*,int ,int ,scalar_t__,int ,scalar_t__,int ,int ) ;
 struct sock* nf_tproxy_handle_time_wait4 (int ,struct sk_buff*,scalar_t__,scalar_t__,struct sock*) ;
 scalar_t__ nf_tproxy_laddr4 (struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ nf_tproxy_sk_is_transparent (struct sock*) ;
 struct nft_tproxy* nft_expr_priv (struct nft_expr const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,int ,int,struct udphdr*) ;

__attribute__((used)) static void nft_tproxy_eval_v4(const struct nft_expr *expr,
          struct nft_regs *regs,
          const struct nft_pktinfo *pkt)
{
 const struct nft_tproxy *priv = nft_expr_priv(expr);
 struct sk_buff *skb = pkt->skb;
 const struct iphdr *iph = ip_hdr(skb);
 struct udphdr _hdr, *hp;
 __be32 taddr = 0;
 __be16 tport = 0;
 struct sock *sk;

 hp = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_hdr), &_hdr);
 if (!hp) {
  regs->verdict.code = NFT_BREAK;
  return;
 }





 sk = nf_tproxy_get_sock_v4(nft_net(pkt), skb, iph->protocol,
       iph->saddr, iph->daddr,
       hp->source, hp->dest,
       skb->dev, NF_TPROXY_LOOKUP_ESTABLISHED);

 if (priv->sreg_addr)
  taddr = regs->data[priv->sreg_addr];
 taddr = nf_tproxy_laddr4(skb, taddr, iph->daddr);

 if (priv->sreg_port)
  tport = regs->data[priv->sreg_port];
 if (!tport)
  tport = hp->dest;


 if (sk && sk->sk_state == TCP_TIME_WAIT) {

  sk = nf_tproxy_handle_time_wait4(nft_net(pkt), skb, taddr, tport, sk);
 } else if (!sk) {



  sk = nf_tproxy_get_sock_v4(nft_net(pkt), skb, iph->protocol,
        iph->saddr, taddr,
        hp->source, tport,
        skb->dev, NF_TPROXY_LOOKUP_LISTENER);
 }

 if (sk && nf_tproxy_sk_is_transparent(sk))
  nf_tproxy_assign_sock(skb, sk);
 else
  regs->verdict.code = NFT_BREAK;
}

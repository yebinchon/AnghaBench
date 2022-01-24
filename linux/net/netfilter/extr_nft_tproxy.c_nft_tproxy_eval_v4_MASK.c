#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int /*<<< orphan*/  source; scalar_t__ dest; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nft_tproxy {int sreg_addr; int sreg_port; } ;
struct TYPE_2__ {void* code; } ;
struct nft_regs {TYPE_1__ verdict; scalar_t__* data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_expr {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; scalar_t__ daddr; } ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 void* NFT_BREAK ; 
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_ESTABLISHED ; 
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_LISTENER ; 
 scalar_t__ TCP_TIME_WAIT ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,scalar_t__,scalar_t__,struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 struct nft_tproxy* FUNC7 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nft_pktinfo const*) ; 
 struct udphdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,struct udphdr*) ; 

__attribute__((used)) static void FUNC10(const struct nft_expr *expr,
			       struct nft_regs *regs,
			       const struct nft_pktinfo *pkt)
{
	const struct nft_tproxy *priv = FUNC7(expr);
	struct sk_buff *skb = pkt->skb;
	const struct iphdr *iph = FUNC0(skb);
	struct udphdr _hdr, *hp;
	__be32 taddr = 0;
	__be16 tport = 0;
	struct sock *sk;

	hp = FUNC9(skb, FUNC1(skb), sizeof(_hdr), &_hdr);
	if (!hp) {
		regs->verdict.code = NFT_BREAK;
		return;
	}

	/* check if there's an ongoing connection on the packet addresses, this
	 * happens if the redirect already happened and the current packet
	 * belongs to an already established connection
	 */
	sk = FUNC3(FUNC8(pkt), skb, iph->protocol,
				   iph->saddr, iph->daddr,
				   hp->source, hp->dest,
				   skb->dev, NF_TPROXY_LOOKUP_ESTABLISHED);

	if (priv->sreg_addr)
		taddr = regs->data[priv->sreg_addr];
	taddr = FUNC5(skb, taddr, iph->daddr);

	if (priv->sreg_port)
		tport = regs->data[priv->sreg_port];
	if (!tport)
		tport = hp->dest;

	/* UDP has no TCP_TIME_WAIT state, so we never enter here */
	if (sk && sk->sk_state == TCP_TIME_WAIT) {
		/* reopening a TIME_WAIT connection needs special handling */
		sk = FUNC4(FUNC8(pkt), skb, taddr, tport, sk);
	} else if (!sk) {
		/* no, there's no established connection, check if
		 * there's a listener on the redirected addr/port
		 */
		sk = FUNC3(FUNC8(pkt), skb, iph->protocol,
					   iph->saddr, taddr,
					   hp->source, tport,
					   skb->dev, NF_TPROXY_LOOKUP_LISTENER);
	}

	if (sk && FUNC6(sk))
		FUNC2(skb, sk);
	else
		regs->verdict.code = NFT_BREAK;
}
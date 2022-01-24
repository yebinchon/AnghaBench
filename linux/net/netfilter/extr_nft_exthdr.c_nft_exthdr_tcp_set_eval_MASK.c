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
typedef  scalar_t__ u8 ;
typedef  void* u32 ;
typedef  void* u16 ;
struct tcphdr {int /*<<< orphan*/  check; } ;
struct nft_regs {void** data; } ;
struct TYPE_2__ {scalar_t__ thoff; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; TYPE_1__ xt; } ;
struct nft_exthdr {scalar_t__ type; unsigned int len; unsigned int offset; size_t sreg; } ;
struct nft_expr {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;
typedef  void* __be32 ;
typedef  void* __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_TCP_OPTION_SPACE ; 
#define  TCPOPT_MSS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*,int) ; 
 struct nft_exthdr* FUNC4 (struct nft_expr const*) ; 
 struct tcphdr* FUNC5 (struct nft_pktinfo const*,int,scalar_t__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 unsigned int FUNC7 (scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (void*,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(const struct nft_expr *expr,
				    struct nft_regs *regs,
				    const struct nft_pktinfo *pkt)
{
	u8 buff[sizeof(struct tcphdr) + MAX_TCP_OPTION_SPACE];
	struct nft_exthdr *priv = FUNC4(expr);
	unsigned int i, optl, tcphdr_len, offset;
	struct tcphdr *tcph;
	u8 *opt;
	u32 src;

	tcph = FUNC5(pkt, sizeof(buff), buff, &tcphdr_len);
	if (!tcph)
		return;

	opt = (u8 *)tcph;
	for (i = sizeof(*tcph); i < tcphdr_len - 1; i += optl) {
		union {
			u8 octet;
			__be16 v16;
			__be32 v32;
		} old, new;

		optl = FUNC7(opt, i);

		if (priv->type != opt[i])
			continue;

		if (i + optl > tcphdr_len || priv->len + priv->offset > optl)
			return;

		if (FUNC9(pkt->skb,
					pkt->xt.thoff + i + priv->len))
			return;

		tcph = FUNC5(pkt, sizeof(buff), buff,
					      &tcphdr_len);
		if (!tcph)
			return;

		src = regs->data[priv->sreg];
		offset = i + priv->offset;

		switch (priv->len) {
		case 2:
			old.v16 = FUNC1((u16 *)(opt + offset));
			new.v16 = src;

			switch (priv->type) {
			case TCPOPT_MSS:
				/* increase can cause connection to stall */
				if (FUNC6(old.v16) <= FUNC6(new.v16))
					return;
			break;
			}

			if (old.v16 == new.v16)
				return;

			FUNC8(new.v16, (u16*)(opt + offset));
			FUNC2(&tcph->check, pkt->skb,
						 old.v16, new.v16, false);
			break;
		case 4:
			new.v32 = src;
			old.v32 = FUNC1((u32 *)(opt + offset));

			if (old.v32 == new.v32)
				return;

			FUNC8(new.v32, (u32*)(opt + offset));
			FUNC3(&tcph->check, pkt->skb,
						 old.v32, new.v32, false);
			break;
		default:
			FUNC0(1);
			break;
		}

		return;
	}
}
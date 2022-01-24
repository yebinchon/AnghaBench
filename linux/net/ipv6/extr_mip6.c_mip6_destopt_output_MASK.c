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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int header_len; } ;
struct xfrm_state {TYPE_1__ props; int /*<<< orphan*/  lock; int /*<<< orphan*/ * coaddr; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; } ;
struct ipv6_destopt_hdr {int hdrlen; int /*<<< orphan*/  nexthdr; } ;
struct ipv6_destopt_hao {int length; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_DSTOPTS ; 
 int /*<<< orphan*/  IPV6_TLV_HAO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ipv6_destopt_hao* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipv6hdr *iph;
	struct ipv6_destopt_hdr *dstopt;
	struct ipv6_destopt_hao *hao;
	u8 nexthdr;
	int len;

	FUNC8(skb, -FUNC7(skb));
	iph = FUNC3(skb);

	nexthdr = *FUNC6(skb);
	*FUNC6(skb) = IPPROTO_DSTOPTS;

	dstopt = (struct ipv6_destopt_hdr *)FUNC9(skb);
	dstopt->nexthdr = nexthdr;

	hao = FUNC5((char *)(dstopt + 1),
			FUNC2(sizeof(*dstopt), 6));

	hao->type = IPV6_TLV_HAO;
	FUNC0(sizeof(*hao) != 18);
	hao->length = sizeof(*hao) - 2;

	len = ((char *)hao - (char *)dstopt) + sizeof(*hao);

	FUNC4(&hao->addr, &iph->saddr, sizeof(hao->addr));
	FUNC10(&x->lock);
	FUNC4(&iph->saddr, x->coaddr, sizeof(iph->saddr));
	FUNC11(&x->lock);

	FUNC1(len != x->props.header_len);
	dstopt->hdrlen = (x->props.header_len >> 3) - 1;

	return 0;
}
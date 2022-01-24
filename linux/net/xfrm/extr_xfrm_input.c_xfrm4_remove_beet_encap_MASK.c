#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  a4; } ;
struct TYPE_5__ {int /*<<< orphan*/  a4; } ;
struct TYPE_7__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct xfrm_state {TYPE_3__ sel; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct iphdr {int ihl; scalar_t__ check; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  tot_len; } ;
struct ip_beet_phdr {int padlen; int hdrlen; scalar_t__ nexthdr; } ;
struct TYPE_8__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IPPROTO_BEETPH ; 
 int IPV4_BEET_PHMAXLEN ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct xfrm_state *x, struct sk_buff *skb)
{
	struct iphdr *iph;
	int optlen = 0;
	int err = -EINVAL;

	if (FUNC10(FUNC0(skb)->protocol == IPPROTO_BEETPH)) {
		struct ip_beet_phdr *ph;
		int phlen;

		if (!FUNC5(skb, sizeof(*ph)))
			goto out;

		ph = (struct ip_beet_phdr *)skb->data;

		phlen = sizeof(*ph) + ph->padlen;
		optlen = ph->hdrlen * 8 + (IPV4_BEET_PHMAXLEN - phlen);
		if (optlen < 0 || optlen & 3 || optlen > 250)
			goto out;

		FUNC0(skb)->protocol = ph->nexthdr;

		if (!FUNC5(skb, phlen))
			goto out;
		FUNC1(skb, phlen);
	}

	FUNC8(skb, sizeof(*iph));
	FUNC9(skb);
	FUNC6(skb);

	FUNC11(skb);

	iph = FUNC4(skb);

	iph->ihl += optlen / 4;
	iph->tot_len = FUNC2(skb->len);
	iph->daddr = x->sel.daddr.a4;
	iph->saddr = x->sel.saddr.a4;
	iph->check = 0;
	iph->check = FUNC3(FUNC7(skb), iph->ihl);
	err = 0;
out:
	return err;
}
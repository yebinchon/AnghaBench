#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ila_params {int csum_mode; int /*<<< orphan*/  locator; } ;
struct ila_addr {int /*<<< orphan*/  loc; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
#define  ILA_CSUM_ADJUST_TRANSPORT 131 
#define  ILA_CSUM_NEUTRAL_MAP 130 
#define  ILA_CSUM_NEUTRAL_MAP_AUTO 129 
#define  ILA_CSUM_NO_ACTION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ila_addr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct ila_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct ila_addr*,struct ila_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ila_addr*,struct ila_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 

void FUNC7(struct sk_buff *skb, struct ila_params *p,
			     bool sir2ila)
{
	struct ipv6hdr *ip6h = FUNC6(skb);
	struct ila_addr *iaddr = FUNC1(&ip6h->daddr);

	switch (p->csum_mode) {
	case ILA_CSUM_ADJUST_TRANSPORT:
		FUNC2(skb, p);
		break;
	case ILA_CSUM_NEUTRAL_MAP:
		if (sir2ila) {
			if (FUNC0(FUNC5(iaddr->ident))) {
				/* Checksum flag should never be
				 * set in a formatted SIR address.
				 */
				break;
			}
		} else if (!FUNC5(iaddr->ident)) {
			/* ILA to SIR translation and C-bit isn't
			 * set so we're good.
			 */
			break;
		}
		FUNC3(iaddr, p);
		break;
	case ILA_CSUM_NEUTRAL_MAP_AUTO:
		FUNC4(iaddr, p);
		break;
	case ILA_CSUM_NO_ACTION:
		break;
	}

	/* Now change destination address */
	iaddr->loc = p->locator;
}
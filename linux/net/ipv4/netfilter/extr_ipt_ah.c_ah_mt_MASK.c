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
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int /*<<< orphan*/  thoff; struct ipt_ah* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ah {int invflags; int /*<<< orphan*/ * spis; } ;
struct ip_auth_hdr {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  _ahdr ;

/* Variables and functions */
 int IPT_AH_INV_SPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ip_auth_hdr* FUNC2 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct ip_auth_hdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct ip_auth_hdr _ahdr;
	const struct ip_auth_hdr *ah;
	const struct ipt_ah *ahinfo = par->matchinfo;

	/* Must not be a fragment. */
	if (par->fragoff != 0)
		return false;

	ah = FUNC2(skb, par->thoff, sizeof(_ahdr), &_ahdr);
	if (ah == NULL) {
		/* We've been asked to examine this packet, and we
		 * can't.  Hence, no choice but to drop.
		 */
		FUNC1("Dropping evil AH tinygram.\n");
		par->hotdrop = true;
		return false;
	}

	return FUNC3(ahinfo->spis[0], ahinfo->spis[1],
			 FUNC0(ah->spi),
			 !!(ahinfo->invflags & IPT_AH_INV_SPI));
}
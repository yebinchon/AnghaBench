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
struct xt_action_param {int hotdrop; struct ip6t_ah* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_auth_hdr {unsigned int reserved; int /*<<< orphan*/  spi; int /*<<< orphan*/  hdrlen; } ;
struct ip6t_ah {int invflags; unsigned int hdrlen; unsigned int hdrres; int /*<<< orphan*/ * spis; } ;
typedef  int /*<<< orphan*/  _ah ;

/* Variables and functions */
 int ENOENT ; 
 int IP6T_AH_INV_LEN ; 
 int IP6T_AH_INV_SPI ; 
 int /*<<< orphan*/  NEXTHDR_AUTH ; 
 unsigned int FUNC0 (struct ip_auth_hdr const*) ; 
 int FUNC1 (struct sk_buff const*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 
 struct ip_auth_hdr* FUNC4 (struct sk_buff const*,unsigned int,int,struct ip_auth_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC6(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct ip_auth_hdr _ah;
	const struct ip_auth_hdr *ah;
	const struct ip6t_ah *ahinfo = par->matchinfo;
	unsigned int ptr = 0;
	unsigned int hdrlen = 0;
	int err;

	err = FUNC1(skb, &ptr, NEXTHDR_AUTH, NULL, NULL);
	if (err < 0) {
		if (err != -ENOENT)
			par->hotdrop = true;
		return false;
	}

	ah = FUNC4(skb, ptr, sizeof(_ah), &_ah);
	if (ah == NULL) {
		par->hotdrop = true;
		return false;
	}

	hdrlen = FUNC0(ah);

	FUNC3("IPv6 AH LEN %u %u ", hdrlen, ah->hdrlen);
	FUNC3("RES %04X ", ah->reserved);
	FUNC3("SPI %u %08X\n", FUNC2(ah->spi), FUNC2(ah->spi));

	FUNC3("IPv6 AH spi %02X ",
		 FUNC5(ahinfo->spis[0], ahinfo->spis[1],
			   FUNC2(ah->spi),
			   !!(ahinfo->invflags & IP6T_AH_INV_SPI)));
	FUNC3("len %02X %04X %02X ",
		 ahinfo->hdrlen, hdrlen,
		 (!ahinfo->hdrlen ||
		  (ahinfo->hdrlen == hdrlen) ^
		  !!(ahinfo->invflags & IP6T_AH_INV_LEN)));
	FUNC3("res %02X %04X %02X\n",
		 ahinfo->hdrres, ah->reserved,
		 !(ahinfo->hdrres && ah->reserved));

	return (ah != NULL) &&
		FUNC5(ahinfo->spis[0], ahinfo->spis[1],
			  FUNC2(ah->spi),
			  !!(ahinfo->invflags & IP6T_AH_INV_SPI)) &&
		(!ahinfo->hdrlen ||
		 (ahinfo->hdrlen == hdrlen) ^
		 !!(ahinfo->invflags & IP6T_AH_INV_LEN)) &&
		!(ahinfo->hdrres && ah->reserved);
}
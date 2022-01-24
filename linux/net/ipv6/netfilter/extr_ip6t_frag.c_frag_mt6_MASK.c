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
struct xt_action_param {int hotdrop; struct ip6t_frag* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip6t_frag {int invflags; int flags; int /*<<< orphan*/ * ids; } ;
struct frag_hdr {int frag_off; int /*<<< orphan*/  reserved; int /*<<< orphan*/  identification; } ;
typedef  int /*<<< orphan*/  _frag ;

/* Variables and functions */
 int ENOENT ; 
 int IP6T_FRAG_FST ; 
 int IP6T_FRAG_INV_IDS ; 
 int IP6T_FRAG_MF ; 
 int IP6T_FRAG_NMF ; 
 int IP6T_FRAG_RES ; 
 int IP6_MF ; 
 int /*<<< orphan*/  NEXTHDR_FRAGMENT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff const*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 struct frag_hdr* FUNC6 (struct sk_buff const*,unsigned int,int,struct frag_hdr*) ; 

__attribute__((used)) static bool
FUNC7(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct frag_hdr _frag;
	const struct frag_hdr *fh;
	const struct ip6t_frag *fraginfo = par->matchinfo;
	unsigned int ptr = 0;
	int err;

	err = FUNC2(skb, &ptr, NEXTHDR_FRAGMENT, NULL, NULL);
	if (err < 0) {
		if (err != -ENOENT)
			par->hotdrop = true;
		return false;
	}

	fh = FUNC6(skb, ptr, sizeof(_frag), &_frag);
	if (fh == NULL) {
		par->hotdrop = true;
		return false;
	}

	FUNC5("INFO %04X ", fh->frag_off);
	FUNC5("OFFSET %04X ", FUNC4(fh->frag_off) & ~0x7);
	FUNC5("RES %02X %04X", fh->reserved, FUNC4(fh->frag_off) & 0x6);
	FUNC5("MF %04X ", fh->frag_off & FUNC0(IP6_MF));
	FUNC5("ID %u %08X\n", FUNC3(fh->identification),
		 FUNC3(fh->identification));

	FUNC5("IPv6 FRAG id %02X ",
		 FUNC1(fraginfo->ids[0], fraginfo->ids[1],
			  FUNC3(fh->identification),
			  !!(fraginfo->invflags & IP6T_FRAG_INV_IDS)));
	FUNC5("res %02X %02X%04X %02X ",
		 fraginfo->flags & IP6T_FRAG_RES, fh->reserved,
		 FUNC4(fh->frag_off) & 0x6,
		 !((fraginfo->flags & IP6T_FRAG_RES) &&
		   (fh->reserved || (FUNC4(fh->frag_off) & 0x06))));
	FUNC5("first %02X %02X %02X ",
		 fraginfo->flags & IP6T_FRAG_FST,
		 FUNC4(fh->frag_off) & ~0x7,
		 !((fraginfo->flags & IP6T_FRAG_FST) &&
		   (FUNC4(fh->frag_off) & ~0x7)));
	FUNC5("mf %02X %02X %02X ",
		 fraginfo->flags & IP6T_FRAG_MF,
		 FUNC4(fh->frag_off) & IP6_MF,
		 !((fraginfo->flags & IP6T_FRAG_MF) &&
		   !((FUNC4(fh->frag_off) & IP6_MF))));
	FUNC5("last %02X %02X %02X\n",
		 fraginfo->flags & IP6T_FRAG_NMF,
		 FUNC4(fh->frag_off) & IP6_MF,
		 !((fraginfo->flags & IP6T_FRAG_NMF) &&
		   (FUNC4(fh->frag_off) & IP6_MF)));

	return (fh != NULL) &&
		FUNC1(fraginfo->ids[0], fraginfo->ids[1],
			 FUNC3(fh->identification),
			 !!(fraginfo->invflags & IP6T_FRAG_INV_IDS)) &&
		!((fraginfo->flags & IP6T_FRAG_RES) &&
		  (fh->reserved || (FUNC4(fh->frag_off) & 0x6))) &&
		!((fraginfo->flags & IP6T_FRAG_FST) &&
		  (FUNC4(fh->frag_off) & ~0x7)) &&
		!((fraginfo->flags & IP6T_FRAG_MF) &&
		  !(FUNC4(fh->frag_off) & IP6_MF)) &&
		!((fraginfo->flags & IP6T_FRAG_NMF) &&
		  (FUNC4(fh->frag_off) & IP6_MF));
}
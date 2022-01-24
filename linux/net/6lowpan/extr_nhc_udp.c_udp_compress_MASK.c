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
typedef  int u8 ;
typedef  int /*<<< orphan*/  tmp ;
struct udphdr {int source; int dest; int check; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int LOWPAN_NHC_UDP_4BIT_MASK ; 
 int LOWPAN_NHC_UDP_4BIT_PORT ; 
 int LOWPAN_NHC_UDP_8BIT_MASK ; 
 int LOWPAN_NHC_UDP_8BIT_PORT ; 
 int LOWPAN_NHC_UDP_CS_P_00 ; 
 int LOWPAN_NHC_UDP_CS_P_01 ; 
 int LOWPAN_NHC_UDP_CS_P_10 ; 
 int LOWPAN_NHC_UDP_CS_P_11 ; 
 int /*<<< orphan*/  FUNC0 (int**,int*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct udphdr* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, u8 **hc_ptr)
{
	const struct udphdr *uh = FUNC3(skb);
	u8 tmp;

	if (((FUNC1(uh->source) & LOWPAN_NHC_UDP_4BIT_MASK) ==
	     LOWPAN_NHC_UDP_4BIT_PORT) &&
	    ((FUNC1(uh->dest) & LOWPAN_NHC_UDP_4BIT_MASK) ==
	     LOWPAN_NHC_UDP_4BIT_PORT)) {
		FUNC2("UDP header: both ports compression to 4 bits\n");
		/* compression value */
		tmp = LOWPAN_NHC_UDP_CS_P_11;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
		/* source and destination port */
		tmp = FUNC1(uh->dest) - LOWPAN_NHC_UDP_4BIT_PORT +
		      ((FUNC1(uh->source) - LOWPAN_NHC_UDP_4BIT_PORT) << 4);
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
	} else if ((FUNC1(uh->dest) & LOWPAN_NHC_UDP_8BIT_MASK) ==
			LOWPAN_NHC_UDP_8BIT_PORT) {
		FUNC2("UDP header: remove 8 bits of dest\n");
		/* compression value */
		tmp = LOWPAN_NHC_UDP_CS_P_01;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
		/* source port */
		FUNC0(hc_ptr, &uh->source, sizeof(uh->source));
		/* destination port */
		tmp = FUNC1(uh->dest) - LOWPAN_NHC_UDP_8BIT_PORT;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
	} else if ((FUNC1(uh->source) & LOWPAN_NHC_UDP_8BIT_MASK) ==
			LOWPAN_NHC_UDP_8BIT_PORT) {
		FUNC2("UDP header: remove 8 bits of source\n");
		/* compression value */
		tmp = LOWPAN_NHC_UDP_CS_P_10;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
		/* source port */
		tmp = FUNC1(uh->source) - LOWPAN_NHC_UDP_8BIT_PORT;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
		/* destination port */
		FUNC0(hc_ptr, &uh->dest, sizeof(uh->dest));
	} else {
		FUNC2("UDP header: can't compress\n");
		/* compression value */
		tmp = LOWPAN_NHC_UDP_CS_P_00;
		FUNC0(hc_ptr, &tmp, sizeof(tmp));
		/* source port */
		FUNC0(hc_ptr, &uh->source, sizeof(uh->source));
		/* destination port */
		FUNC0(hc_ptr, &uh->dest, sizeof(uh->dest));
	}

	/* checksum is always inline */
	FUNC0(hc_ptr, &uh->check, sizeof(uh->check));

	return 0;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ ip_summed; long len; long csum_offset; } ;
typedef  scalar_t__ __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 long FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*,long,int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff const*,int /*<<< orphan*/ *,long) ; 
 long FUNC5 (struct sk_buff const*) ; 

void FUNC6(const struct sk_buff *skb, u8 *to)
{
	__wsum csum;
	long csstart;

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		csstart = FUNC2(skb);
	else
		csstart = FUNC5(skb);

	FUNC0(csstart > FUNC5(skb));

	FUNC4(skb, to, csstart);

	csum = 0;
	if (csstart != skb->len)
		csum = FUNC3(skb, csstart, to + csstart,
					      skb->len - csstart, 0);

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		long csstuff = csstart + skb->csum_offset;

		*((__sum16 *)(to + csstuff)) = FUNC1(csum);
	}
}
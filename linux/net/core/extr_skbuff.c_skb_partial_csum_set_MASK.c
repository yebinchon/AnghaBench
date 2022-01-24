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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ csum_offset; scalar_t__ csum_start; int /*<<< orphan*/  ip_summed; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 scalar_t__ U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

bool FUNC5(struct sk_buff *skb, u16 start, u16 off)
{
	u32 csum_end = (u32)start + (u32)off + sizeof(__sum16);
	u32 csum_start = FUNC2(skb) + (u32)start;

	if (FUNC4(csum_start > U16_MAX || csum_end > FUNC1(skb))) {
		FUNC0("bad partial csum: csum=%u/%u headroom=%u headlen=%u\n",
				     start, off, FUNC2(skb), FUNC1(skb));
		return false;
	}
	skb->ip_summed = CHECKSUM_PARTIAL;
	skb->csum_start = csum_start;
	skb->csum_offset = off;
	FUNC3(skb, start);
	return true;
}
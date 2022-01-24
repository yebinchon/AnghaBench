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
typedef  int /*<<< orphan*/  lowpan_rx_result ;

/* Variables and functions */
 int LOWPAN_DISPATCH_FRAG_MASK ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP ; 
 int /*<<< orphan*/  RX_QUEUED ; 
 int FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static lowpan_rx_result FUNC4(struct sk_buff *skb)
{
	int ret;

	if (!(FUNC1(*FUNC3(skb)) ||
	      FUNC2(*FUNC3(skb))))
		return RX_CONTINUE;

	ret = FUNC0(skb, *FUNC3(skb) &
			      LOWPAN_DISPATCH_FRAG_MASK);
	if (ret == 1)
		return RX_QUEUED;

	/* Packet is freed by lowpan_frag_rcv on error or put into the frag
	 * bucket.
	 */
	return RX_DROP;
}
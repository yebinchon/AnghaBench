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
struct udp_dev_scratch {int csum_unnecessary; int is_linear; int /*<<< orphan*/  _tsize_state; int /*<<< orphan*/  len; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UDP_SKB_IS_STATELESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct udp_dev_scratch* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct udp_dev_scratch *scratch = FUNC5(skb);

	FUNC0(sizeof(struct udp_dev_scratch) > sizeof(long));
	scratch->_tsize_state = skb->truesize;
#if BITS_PER_LONG == 64
	scratch->len = skb->len;
	scratch->csum_unnecessary = !!skb_csum_unnecessary(skb);
	scratch->is_linear = !skb_is_nonlinear(skb);
#endif
	/* all head states execept sp (dst, sk, nf) are always cleared by
	 * udp_rcv() and we need to preserve secpath, if present, to eventually
	 * process IP_CMSG_PASSSEC at recvmsg() time
	 */
	if (FUNC1(!FUNC4(skb)))
		scratch->_tsize_state |= UDP_SKB_IS_STATELESS;
}
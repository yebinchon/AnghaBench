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
struct tcphdr {scalar_t__ rst; scalar_t__ fin; } ;
struct sk_buff {int dummy; } ;
struct flow_offload {int dummy; } ;

/* Variables and functions */
 int IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct flow_offload*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct flow_offload *flow, int proto,
			       struct sk_buff *skb, unsigned int thoff)
{
	struct tcphdr *tcph;

	if (proto != IPPROTO_TCP)
		return 0;

	if (!FUNC1(skb, thoff + sizeof(*tcph)))
		return -1;

	tcph = (void *)(FUNC2(skb) + thoff);
	if (FUNC3(tcph->fin || tcph->rst)) {
		FUNC0(flow);
		return -1;
	}

	return 0;
}
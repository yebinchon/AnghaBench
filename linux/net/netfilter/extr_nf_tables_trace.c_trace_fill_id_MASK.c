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
struct sk_buff {int /*<<< orphan*/  skb_iif; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_TRACE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *nlskb, struct sk_buff *skb)
{
	__be32 id;

	/* using skb address as ID results in a limited number of
	 * values (and quick reuse).
	 *
	 * So we attempt to use as many skb members that will not
	 * change while skb is with netfilter.
	 */
	id = (__be32)FUNC1(FUNC0(skb), FUNC3(skb),
				  skb->skb_iif);

	return FUNC2(nlskb, NFTA_TRACE_ID, id);
}
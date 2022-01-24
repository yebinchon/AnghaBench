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
struct rt6_info {int rt6i_flags; int /*<<< orphan*/  from; } ;
struct fib6_node {int fn_sernum; } ;
struct fib6_info {int /*<<< orphan*/  fib6_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_ADDR_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int RTF_CACHE ; 
 int RTF_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct rt6_info*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct rt6_info *rt;

	FUNC0(skb, ICMPV6_DEST_UNREACH, ICMPV6_ADDR_UNREACH, 0);

	rt = (struct rt6_info *) FUNC5(skb);
	if (rt) {
		FUNC2();
		if (rt->rt6i_flags & RTF_CACHE) {
			FUNC4(rt);
		} else {
			struct fib6_info *from;
			struct fib6_node *fn;

			from = FUNC1(rt->from);
			if (from) {
				fn = FUNC1(from->fib6_node);
				if (fn && (rt->rt6i_flags & RTF_DEFAULT))
					fn->fn_sernum = -1;
			}
		}
		FUNC3();
	}
}
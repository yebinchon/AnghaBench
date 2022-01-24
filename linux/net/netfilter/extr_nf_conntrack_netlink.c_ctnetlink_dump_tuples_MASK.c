#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,struct nf_conntrack_tuple const*) ; 
 int FUNC1 (struct sk_buff*,struct nf_conntrack_tuple const*,struct nf_conntrack_l4proto const*) ; 
 struct nf_conntrack_l4proto* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				 const struct nf_conntrack_tuple *tuple)
{
	const struct nf_conntrack_l4proto *l4proto;
	int ret;

	FUNC3();
	ret = FUNC0(skb, tuple);

	if (ret >= 0) {
		l4proto = FUNC2(tuple->dst.protonum);
		ret = FUNC1(skb, tuple, l4proto);
	}
	FUNC4();
	return ret;
}
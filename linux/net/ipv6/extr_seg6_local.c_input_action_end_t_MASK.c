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
struct seg6_local_lwt {int /*<<< orphan*/  table; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_sr_hdr*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct ipv6_sr_hdr* FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
	struct ipv6_sr_hdr *srh;

	srh = FUNC2(skb);
	if (!srh)
		goto drop;

	FUNC0(srh, &FUNC3(skb)->daddr);

	FUNC5(skb, NULL, slwt->table);

	return FUNC1(skb);

drop:
	FUNC4(skb);
	return -EINVAL;
}
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
struct sk_buff {scalar_t__ len; } ;
struct seg6_local_lwt {int /*<<< orphan*/  srh; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sk_buff*) ; 
 struct ipv6_sr_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
	struct ipv6_sr_hdr *srh;
	int err = -EINVAL;

	srh = FUNC1(skb);
	if (!srh)
		goto drop;

	err = FUNC5(skb, slwt->srh);
	if (err)
		goto drop;

	FUNC3(skb)->payload_len = FUNC2(skb->len - sizeof(struct ipv6hdr));
	FUNC7(skb, sizeof(struct ipv6hdr));

	FUNC6(skb, NULL, 0);

	return FUNC0(skb);

drop:
	FUNC4(skb);
	return err;
}
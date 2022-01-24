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
struct sk_buff {int encapsulation; scalar_t__ len; } ;
struct seg6_local_lwt {int /*<<< orphan*/  srh; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  payload_len; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_sr_hdr*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct ipv6_sr_hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb,
				     struct seg6_local_lwt *slwt)
{
	struct ipv6_sr_hdr *srh;
	int err = -EINVAL;

	srh = FUNC2(skb);
	if (!srh)
		goto drop;

	FUNC0(srh, &FUNC4(skb)->daddr);

	FUNC8(skb);
	skb->encapsulation = 1;

	err = FUNC6(skb, slwt->srh, IPPROTO_IPV6);
	if (err)
		goto drop;

	FUNC4(skb)->payload_len = FUNC3(skb->len - sizeof(struct ipv6hdr));
	FUNC9(skb, sizeof(struct ipv6hdr));

	FUNC7(skb, NULL, 0);

	return FUNC1(skb);

drop:
	FUNC5(skb);
	return err;
}
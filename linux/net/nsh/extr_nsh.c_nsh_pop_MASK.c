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
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct nshhdr {int /*<<< orphan*/  np; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t NSH_BASE_HDR_LEN ; 
 size_t FUNC0 (struct nshhdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct sk_buff *skb)
{
	struct nshhdr *nh;
	size_t length;
	__be16 inner_proto;

	if (!FUNC1(skb, NSH_BASE_HDR_LEN))
		return -ENOMEM;
	nh = (struct nshhdr *)(skb->data);
	length = FUNC0(nh);
	if (length < NSH_BASE_HDR_LEN)
		return -EINVAL;
	inner_proto = FUNC6(nh->np);
	if (!FUNC1(skb, length))
		return -ENOMEM;

	if (!inner_proto)
		return -EAFNOSUPPORT;

	FUNC2(skb, length);
	FUNC3(skb);
	FUNC5(skb);
	FUNC4(skb);
	skb->protocol = inner_proto;

	return 0;
}
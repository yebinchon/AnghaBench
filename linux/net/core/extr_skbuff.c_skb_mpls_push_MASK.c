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
struct sk_buff {int /*<<< orphan*/  protocol; TYPE_1__* dev; int /*<<< orphan*/  inner_protocol; scalar_t__ encapsulation; } ;
struct mpls_shim_hdr {int /*<<< orphan*/  label_stack_entry; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 scalar_t__ MPLS_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 struct mpls_shim_hdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct mpls_shim_hdr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct sk_buff *skb, __be32 mpls_lse, __be16 mpls_proto,
		  int mac_len)
{
	struct mpls_shim_hdr *lse;
	int err;

	if (FUNC13(!FUNC1(mpls_proto)))
		return -EINVAL;

	/* Networking stack does not allow simultaneous Tunnel and MPLS GSO. */
	if (skb->encapsulation)
		return -EINVAL;

	err = FUNC4(skb, MPLS_HLEN);
	if (FUNC13(err))
		return err;

	if (!skb->inner_protocol) {
		FUNC10(skb, mac_len);
		FUNC11(skb, skb->protocol);
	}

	FUNC8(skb, MPLS_HLEN);
	FUNC2(FUNC5(skb) - MPLS_HLEN, FUNC5(skb),
		mac_len);
	FUNC9(skb);
	FUNC12(skb, mac_len);

	lse = FUNC3(skb);
	lse->label_stack_entry = mpls_lse;
	FUNC7(skb, lse, MPLS_HLEN);

	if (skb->dev && skb->dev->type == ARPHRD_ETHER)
		FUNC6(skb, FUNC0(skb), mpls_proto);
	skb->protocol = mpls_proto;

	return 0;
}
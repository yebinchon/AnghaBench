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
struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sk_buff *skb,
			     int gso_type_mask)
{
	int err;

	if (FUNC0(!skb->encapsulation)) {
		FUNC3(skb);
		skb->encapsulation = 1;
	}

	if (FUNC2(skb)) {
		err = FUNC1(skb, GFP_ATOMIC);
		if (FUNC5(err))
			return err;
		FUNC4(skb)->gso_type |= gso_type_mask;
		return 0;
	}

	if (skb->ip_summed != CHECKSUM_PARTIAL) {
		skb->ip_summed = CHECKSUM_NONE;
		/* We clear encapsulation here to prevent badly-written
		 * drivers potentially deciding to offload an inner checksum
		 * if we set CHECKSUM_PARTIAL on the outer header.
		 * This should go away when the drivers are all fixed.
		 */
		skb->encapsulation = 0;
	}

	return 0;
}
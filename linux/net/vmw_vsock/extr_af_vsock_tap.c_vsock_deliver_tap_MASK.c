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
typedef  struct sk_buff sk_buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  vsock_tap_all ; 

void FUNC6(struct sk_buff *build_skb(void *opaque), void *opaque)
{
	struct sk_buff *skb;

	FUNC4();

	if (FUNC2(FUNC3(&vsock_tap_all)))
		goto out;

	skb = build_skb(opaque);
	if (skb) {
		FUNC0(skb);
		FUNC1(skb);
	}

out:
	FUNC5();
}
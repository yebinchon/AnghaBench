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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(struct sk_buff *skb, u32 head_room,
					u64 flags)
{
	u32 max_len = FUNC0(skb);
	u32 new_len = skb->len + head_room;
	int ret;

	if (FUNC7(flags || (!FUNC5(skb) && new_len > max_len) ||
		     new_len < skb->len))
		return -EINVAL;

	ret = FUNC4(skb, head_room);
	if (FUNC2(!ret)) {
		/* Idea for this helper is that we currently only
		 * allow to expand on mac header. This means that
		 * skb->protocol network header, etc, stay as is.
		 * Compared to bpf_skb_change_tail(), we're more
		 * flexible due to not needing to linearize or
		 * reset GSO. Intention for this helper is to be
		 * used by an L3 skb that needs to push mac header
		 * for redirection into L2 device.
		 */
		FUNC1(skb, head_room);
		FUNC3(skb->data, 0, head_room);
		FUNC6(skb);
	}

	return ret;
}
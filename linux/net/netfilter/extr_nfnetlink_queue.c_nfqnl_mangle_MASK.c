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
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct nf_queue_entry {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC8(void *data, int data_len, struct nf_queue_entry *e, int diff)
{
	struct sk_buff *nskb;

	if (diff < 0) {
		if (FUNC1(e->skb, data_len))
			return -ENOMEM;
	} else if (diff > 0) {
		if (data_len > 0xFFFF)
			return -EINVAL;
		if (diff > FUNC7(e->skb)) {
			nskb = FUNC2(e->skb, FUNC5(e->skb),
					       diff, GFP_ATOMIC);
			if (!nskb)
				return -ENOMEM;
			FUNC0(e->skb);
			e->skb = nskb;
		}
		FUNC6(e->skb, diff);
	}
	if (FUNC4(e->skb, data_len))
		return -ENOMEM;
	FUNC3(e->skb, data, data_len);
	e->skb->ip_summed = CHECKSUM_NONE;
	return 0;
}
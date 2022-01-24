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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 

int FUNC2(struct sk_buff *skb, unsigned int len)
{
	int result;

	/* TODO: We must check if we can release all references to non-payload
	 * data using __skb_header_release in our skbs to allow skb_cow_header
	 * to work optimally. This means that those skbs are not allowed to read
	 * or write any data which is before the current position of skb->data
	 * after that call and thus allow other skbs with the same data buffer
	 * to write freely in that area.
	 */
	result = FUNC0(skb, len);
	if (result < 0)
		return result;

	FUNC1(skb, len);
	return 0;
}
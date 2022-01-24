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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, u32 off, u32 len)
{
	/* skb_ensure_writable() is not needed here, as we're
	 * already working on an uncloned skb.
	 */
	if (FUNC4(!FUNC2(skb, off + len)))
		return -ENOMEM;

	FUNC3(skb, skb->data + off, len);
	FUNC1(skb->data + len, skb->data, off);
	FUNC0(skb, len);

	return 0;
}
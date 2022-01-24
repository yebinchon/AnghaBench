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
struct sk_buff {int data_len; int end; int tail; scalar_t__ len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct sk_buff *skb, int pad, bool free_on_error)
{
	int err;
	int ntail;

	/* If the skbuff is non linear tailroom is always zero.. */
	if (!FUNC4(skb) && FUNC6(skb) >= pad) {
		FUNC2(skb->data+skb->len, 0, pad);
		return 0;
	}

	ntail = skb->data_len + pad - (skb->end - skb->tail);
	if (FUNC1(FUNC4(skb) || ntail > 0)) {
		err = FUNC3(skb, 0, ntail, GFP_ATOMIC);
		if (FUNC7(err))
			goto free_skb;
	}

	/* FIXME: The use of this function with non-linear skb's really needs
	 * to be audited.
	 */
	err = FUNC5(skb);
	if (FUNC7(err))
		goto free_skb;

	FUNC2(skb->data + skb->len, 0, pad);
	return 0;

free_skb:
	if (free_on_error)
		FUNC0(skb);
	return err;
}
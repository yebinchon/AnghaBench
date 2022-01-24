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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int data_len; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int FUNC2 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*,scalar_t__) ; 
 int FUNC4 (struct cfpkt*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct sk_buff* FUNC6 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct cfpkt *pkt, u16 len)
{
	struct sk_buff *skb = FUNC6(pkt);


	if (FUNC8(FUNC4(pkt)))
		return -EPROTO;

	if (FUNC5(len <= skb->len)) {
		if (FUNC8(skb->data_len))
			FUNC1(skb, len);
		else
			FUNC7(skb, len);

		return FUNC2(pkt);
	}

	/* Need to expand SKB */
	if (FUNC8(!FUNC3(pkt, len - skb->len)))
		FUNC0(pkt, "skb_pad_trail failed\n");

	return FUNC2(pkt);
}
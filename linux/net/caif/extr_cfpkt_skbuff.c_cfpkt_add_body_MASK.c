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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 scalar_t__ PKT_LEN_WHEN_EXTENDING ; 
 int FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,scalar_t__) ; 
 struct sk_buff* FUNC4 (struct cfpkt*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,scalar_t__,struct sk_buff**) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct cfpkt *pkt, const void *data, u16 len)
{
	struct sk_buff *skb = FUNC4(pkt);
	struct sk_buff *lastskb;
	u8 *to;
	u16 addlen = 0;


	if (FUNC10(FUNC1(pkt)))
		return -EPROTO;

	lastskb = skb;

	/* Check whether we need to add space at the tail */
	if (FUNC10(FUNC9(skb) < len)) {
		if (FUNC2(len < PKT_LEN_WHEN_EXTENDING))
			addlen = PKT_LEN_WHEN_EXTENDING;
		else
			addlen = len;
	}

	/* Check whether we need to change the SKB before writing to the tail */
	if (FUNC10((addlen > 0) || FUNC6(skb) || FUNC8(skb))) {

		/* Make sure data is writable */
		if (FUNC10(FUNC7(skb, addlen, &lastskb) < 0)) {
			FUNC0(pkt, "cow failed\n");
			return -EPROTO;
		}
	}

	/* All set to put the last SKB and optionally write data there. */
	to = FUNC5(skb, lastskb, len);
	if (FUNC2(data))
		FUNC3(to, data, len);
	return 0;
}
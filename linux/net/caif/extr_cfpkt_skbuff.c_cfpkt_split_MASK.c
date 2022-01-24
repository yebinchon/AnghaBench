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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  priority; int /*<<< orphan*/ * data; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int PKT_POSTFIX ; 
 int PKT_PREFIX ; 
 struct cfpkt* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfpkt*) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 
 struct cfpkt* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

struct cfpkt *FUNC9(struct cfpkt *pkt, u16 pos)
{
	struct sk_buff *skb2;
	struct sk_buff *skb = FUNC3(pkt);
	struct cfpkt *tmppkt;
	u8 *split = skb->data + pos;
	u16 len2nd = FUNC5(skb) - split;

	if (FUNC8(FUNC2(pkt)))
		return NULL;

	if (skb->data + pos > FUNC5(skb)) {
		FUNC0(pkt, "trying to split beyond end of packet\n");
		return NULL;
	}

	/* Create a new packet for the second part of the data */
	tmppkt = FUNC1(len2nd + PKT_PREFIX + PKT_POSTFIX,
				  PKT_PREFIX);
	if (tmppkt == NULL)
		return NULL;
	skb2 = FUNC3(tmppkt);


	if (skb2 == NULL)
		return NULL;

	FUNC4(skb2, split, len2nd);

	/* Reduce the length of the original packet */
	FUNC7(skb, pos);

	skb2->priority = skb->priority;
	return FUNC6(skb2);
}
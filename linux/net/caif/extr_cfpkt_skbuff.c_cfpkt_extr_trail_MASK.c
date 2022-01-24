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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int data; int len; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int FUNC1 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct cfpkt *pkt, void *dta, u16 len)
{
	struct sk_buff *skb = FUNC3(pkt);
	u8 *data = dta;
	u8 *from;
	if (FUNC7(FUNC1(pkt)))
		return -EPROTO;

	if (FUNC7(FUNC4(skb) != 0)) {
		FUNC0(pkt, "linearize failed\n");
		return -EPROTO;
	}
	if (FUNC7(skb->data + len > FUNC5(skb))) {
		FUNC0(pkt, "read beyond end of packet\n");
		return -EPROTO;
	}
	from = FUNC5(skb) - len;
	FUNC6(skb, skb->len - len);
	FUNC2(data, from, len);
	return 0;
}
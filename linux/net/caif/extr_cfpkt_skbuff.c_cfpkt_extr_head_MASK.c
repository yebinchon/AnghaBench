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
struct sk_buff {scalar_t__ len; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int FUNC1 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct cfpkt *pkt, void *data, u16 len)
{
	struct sk_buff *skb = FUNC3(pkt);
	u8 *from;
	if (FUNC7(FUNC1(pkt)))
		return -EPROTO;

	if (FUNC7(len > skb->len)) {
		FUNC0(pkt, "read beyond end of packet\n");
		return -EPROTO;
	}

	if (FUNC7(len > FUNC4(skb))) {
		if (FUNC7(FUNC5(skb) != 0)) {
			FUNC0(pkt, "linearize failed\n");
			return -EPROTO;
		}
	}
	from = FUNC6(skb, len);
	from -= len;
	if (data)
		FUNC2(data, from, len);
	return 0;
}
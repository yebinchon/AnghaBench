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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

int FUNC5(struct cfpkt *pkt, void *data, u16 len)
{
	struct sk_buff *skb = FUNC3(pkt);
	if (FUNC4(skb) >= len) {
		FUNC2(data, skb->data, len);
		return 0;
	}
	return !FUNC1(pkt, data, len) &&
	    !FUNC0(pkt, data, len);
}
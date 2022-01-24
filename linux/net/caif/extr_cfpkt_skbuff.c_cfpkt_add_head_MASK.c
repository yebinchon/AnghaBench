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
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,char*) ; 
 int FUNC1 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct cfpkt *pkt, const void *data2, u16 len)
{
	struct sk_buff *skb = FUNC3(pkt);
	struct sk_buff *lastskb;
	u8 *to;
	const u8 *data = data2;
	int ret;
	if (FUNC7(FUNC1(pkt)))
		return -EPROTO;
	if (FUNC7(FUNC5(skb) < len)) {
		FUNC0(pkt, "no headroom\n");
		return -EPROTO;
	}

	/* Make sure data is writable */
	ret = FUNC4(skb, 0, &lastskb);
	if (FUNC7(ret < 0)) {
		FUNC0(pkt, "cow failed\n");
		return ret;
	}

	to = FUNC6(skb, len);
	FUNC2(to, data, len);
	return 0;
}
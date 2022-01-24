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
typedef  size_t u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct l2cap_chan {size_t remote_mps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct msghdr*,size_t) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 size_t L2CAP_SDULEN_SIZE ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct l2cap_chan*,struct msghdr*,size_t,size_t) ; 

__attribute__((used)) static int FUNC6(struct l2cap_chan *chan,
				struct sk_buff_head *seg_queue,
				struct msghdr *msg, size_t len)
{
	struct sk_buff *skb;
	size_t pdu_len;
	u16 sdu_len;

	FUNC0("chan %p, msg %p, len %zu", chan, msg, len);

	sdu_len = len;
	pdu_len = chan->remote_mps - L2CAP_SDULEN_SIZE;

	while (len > 0) {
		if (len <= pdu_len)
			pdu_len = len;

		skb = FUNC5(chan, msg, pdu_len, sdu_len);
		if (FUNC1(skb)) {
			FUNC3(seg_queue);
			return FUNC2(skb);
		}

		FUNC4(seg_queue, skb);

		len -= pdu_len;

		if (sdu_len) {
			sdu_len = 0;
			pdu_len += L2CAP_SDULEN_SIZE;
		}
	}

	return 0;
}
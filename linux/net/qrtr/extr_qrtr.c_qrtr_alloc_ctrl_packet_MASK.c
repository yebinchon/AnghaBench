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
struct sk_buff {int dummy; } ;
struct qrtr_ctrl_pkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ QRTR_HDR_MAX_SIZE ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct qrtr_ctrl_pkt* FUNC1 (struct sk_buff*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct qrtr_ctrl_pkt **pkt)
{
	const int pkt_len = sizeof(struct qrtr_ctrl_pkt);
	struct sk_buff *skb;

	skb = FUNC0(QRTR_HDR_MAX_SIZE + pkt_len, GFP_KERNEL);
	if (!skb)
		return NULL;

	FUNC2(skb, QRTR_HDR_MAX_SIZE);
	*pkt = FUNC1(skb, pkt_len);

	return skb;
}
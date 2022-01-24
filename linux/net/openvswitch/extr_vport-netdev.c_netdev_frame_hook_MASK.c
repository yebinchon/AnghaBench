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
struct sk_buff {scalar_t__ pkt_type; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;

/* Variables and functions */
 scalar_t__ PACKET_LOOPBACK ; 
 int /*<<< orphan*/  RX_HANDLER_CONSUMED ; 
 int /*<<< orphan*/  RX_HANDLER_PASS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static rx_handler_result_t FUNC2(struct sk_buff **pskb)
{
	struct sk_buff *skb = *pskb;

	if (FUNC1(skb->pkt_type == PACKET_LOOPBACK))
		return RX_HANDLER_PASS;

	FUNC0(skb);
	return RX_HANDLER_CONSUMED;
}
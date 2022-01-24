#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ pkt_type; } ;
struct hsr_priv {int dummy; } ;
struct hsr_frame_info {int is_local_exclusive; int is_local_dest; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 scalar_t__ PACKET_BROADCAST ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_MULTICAST ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct hsr_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hsr_priv *hsr, struct sk_buff *skb,
			     struct hsr_frame_info *frame)
{
	if (FUNC1(hsr, FUNC0(skb)->h_dest)) {
		frame->is_local_exclusive = true;
		skb->pkt_type = PACKET_HOST;
	} else {
		frame->is_local_exclusive = false;
	}

	if (skb->pkt_type == PACKET_HOST ||
	    skb->pkt_type == PACKET_MULTICAST ||
	    skb->pkt_type == PACKET_BROADCAST) {
		frame->is_local_dest = true;
	} else {
		frame->is_local_dest = false;
	}
}
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
struct batadv_forw_packet {scalar_t__ queue_left; scalar_t__ if_outgoing; scalar_t__ if_incoming; int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_forw_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct batadv_forw_packet *forw_packet,
			     bool dropped)
{
	if (dropped)
		FUNC4(forw_packet->skb);
	else
		FUNC2(forw_packet->skb);

	if (forw_packet->if_incoming)
		FUNC1(forw_packet->if_incoming);
	if (forw_packet->if_outgoing)
		FUNC1(forw_packet->if_outgoing);
	if (forw_packet->queue_left)
		FUNC0(forw_packet->queue_left);
	FUNC3(forw_packet);
}
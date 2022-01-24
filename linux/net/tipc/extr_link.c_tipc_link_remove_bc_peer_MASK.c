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
typedef  scalar_t__ u16 ;
struct tipc_link {int bc_peer_is_up; void* state; int /*<<< orphan*/  ackers; scalar_t__ snd_nxt; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 void* LINK_ESTABLISHED ; 
 void* LINK_RESET ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_link*,scalar_t__,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct tipc_link *snd_l,
			      struct tipc_link *rcv_l,
			      struct sk_buff_head *xmitq)
{
	u16 ack = snd_l->snd_nxt - 1;

	snd_l->ackers--;
	rcv_l->bc_peer_is_up = true;
	rcv_l->state = LINK_ESTABLISHED;
	FUNC1(rcv_l, ack, xmitq);
	FUNC3(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
	FUNC2(rcv_l);
	rcv_l->state = LINK_RESET;
	if (!snd_l->ackers) {
		FUNC3(snd_l, TIPC_DUMP_ALL, "zero ackers!");
		FUNC2(snd_l);
		snd_l->state = LINK_RESET;
		FUNC0(xmitq);
	}
}
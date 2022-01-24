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
typedef  void* u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int peer_caps; void* rcv_nxt; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ACTIVATE_MSG ; 
 scalar_t__ BCAST_PROTOCOL ; 
 int /*<<< orphan*/  LINK_ESTABLISHED ; 
 int RESET_MSG ; 
 int TIPC_BCAST_SYNCH ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 void* FUNC1 (struct tipc_msg*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 

void FUNC5(struct tipc_link *l, struct tipc_msg *hdr)
{
	int mtyp = FUNC3(hdr);
	u16 peers_snd_nxt = FUNC1(hdr);

	if (FUNC0(l))
		return;

	if (FUNC4(hdr) == BCAST_PROTOCOL) {
		l->rcv_nxt = peers_snd_nxt;
		l->state = LINK_ESTABLISHED;
		return;
	}

	if (l->peer_caps & TIPC_BCAST_SYNCH)
		return;

	if (FUNC2(hdr))
		return;

	/* Compatibility: accept older, less safe initial synch data */
	if ((mtyp == RESET_MSG) || (mtyp == ACTIVATE_MSG))
		l->rcv_nxt = peers_snd_nxt;
}
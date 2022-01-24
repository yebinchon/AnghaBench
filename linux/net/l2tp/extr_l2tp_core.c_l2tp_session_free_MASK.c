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
struct l2tp_tunnel {scalar_t__ magic; } ;
struct l2tp_session {int /*<<< orphan*/  ref_count; struct l2tp_tunnel* tunnel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ L2TP_TUNNEL_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct l2tp_session *session)
{
	struct l2tp_tunnel *tunnel = session->tunnel;

	FUNC0(FUNC3(&session->ref_count) != 0);

	if (tunnel) {
		FUNC0(tunnel->magic != L2TP_TUNNEL_MAGIC);
		FUNC2(tunnel);
	}

	FUNC1(session);
}
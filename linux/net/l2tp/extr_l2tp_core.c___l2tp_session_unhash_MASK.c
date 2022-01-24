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
struct l2tp_tunnel {scalar_t__ version; int /*<<< orphan*/  l2tp_net; int /*<<< orphan*/  hlist_lock; } ;
struct l2tp_session {int /*<<< orphan*/  global_hlist; int /*<<< orphan*/  hlist; struct l2tp_tunnel* tunnel; } ;
struct l2tp_net {int /*<<< orphan*/  l2tp_session_hlist_lock; } ;

/* Variables and functions */
 scalar_t__ L2TP_HDR_VER_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct l2tp_net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct l2tp_session *session)
{
	struct l2tp_tunnel *tunnel = session->tunnel;

	/* Remove the session from core hashes */
	if (tunnel) {
		/* Remove from the per-tunnel hash */
		FUNC6(&tunnel->hlist_lock);
		FUNC0(&session->hlist);
		FUNC7(&tunnel->hlist_lock);

		/* For L2TPv3 we have a per-net hash: remove from there, too */
		if (tunnel->version != L2TP_HDR_VER_2) {
			struct l2tp_net *pn = FUNC2(tunnel->l2tp_net);
			FUNC3(&pn->l2tp_session_hlist_lock);
			FUNC1(&session->global_hlist);
			FUNC4(&pn->l2tp_session_hlist_lock);
			FUNC5();
		}
	}
}
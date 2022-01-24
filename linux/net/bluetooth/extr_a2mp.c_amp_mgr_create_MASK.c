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
struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {struct amp_mgr* data; } ;
struct amp_mgr {int /*<<< orphan*/  list; int /*<<< orphan*/  amp_ctrls_lock; int /*<<< orphan*/  amp_ctrls; int /*<<< orphan*/  kref; struct l2cap_chan* a2mp_chan; struct l2cap_conn* l2cap_conn; } ;
struct TYPE_2__ {struct amp_mgr* amp_mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,struct amp_mgr*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct l2cap_chan* FUNC2 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  amp_mgr_list ; 
 int /*<<< orphan*/  amp_mgr_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct amp_mgr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct amp_mgr *FUNC10(struct l2cap_conn *conn, bool locked)
{
	struct amp_mgr *mgr;
	struct l2cap_chan *chan;

	mgr = FUNC5(sizeof(*mgr), GFP_KERNEL);
	if (!mgr)
		return NULL;

	FUNC0("conn %p mgr %p", conn, mgr);

	mgr->l2cap_conn = conn;

	chan = FUNC2(conn, locked);
	if (!chan) {
		FUNC3(mgr);
		return NULL;
	}

	mgr->a2mp_chan = chan;
	chan->data = mgr;

	conn->hcon->amp_mgr = mgr;

	FUNC4(&mgr->kref);

	/* Remote AMP ctrl list initialization */
	FUNC1(&mgr->amp_ctrls);
	FUNC7(&mgr->amp_ctrls_lock);

	FUNC8(&amp_mgr_list_lock);
	FUNC6(&mgr->list, &amp_mgr_list);
	FUNC9(&amp_mgr_list_lock);

	return mgr;
}
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
struct sk_buff {int dummy; } ;
struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {int dummy; } ;
struct amp_mgr {struct l2cap_chan* a2mp_chan; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct amp_mgr*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct amp_mgr* FUNC2 (struct l2cap_conn*,int) ; 

struct l2cap_chan *FUNC3(struct l2cap_conn *conn,
				       struct sk_buff *skb)
{
	struct amp_mgr *mgr;

	if (conn->hcon->type != ACL_LINK)
		return NULL;

	mgr = FUNC2(conn, false);
	if (!mgr) {
		FUNC1("Could not create AMP manager");
		return NULL;
	}

	FUNC0("mgr: %p chan %p", mgr, mgr->a2mp_chan);

	return mgr->a2mp_chan;
}
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
struct tipc_topsrv {int /*<<< orphan*/  net; } ;
struct tipc_subscription {int /*<<< orphan*/  sub_list; } ;
struct tipc_subscr {int /*<<< orphan*/  filter; } ;
struct tipc_net {int /*<<< orphan*/  subscription_count; } ;
struct tipc_conn {int /*<<< orphan*/  sub_lock; int /*<<< orphan*/  sub_list; int /*<<< orphan*/  conid; } ;

/* Variables and functions */
 scalar_t__ TIPC_MAX_SUBSCR ; 
 int TIPC_SUB_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_conn*,struct tipc_subscr*) ; 
 struct tipc_net* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct tipc_subscr*,int /*<<< orphan*/ ) ; 
 struct tipc_subscription* FUNC10 (int /*<<< orphan*/ ,struct tipc_subscr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct tipc_topsrv *srv,
			     struct tipc_conn *con,
			     struct tipc_subscr *s)
{
	struct tipc_net *tn = FUNC8(srv->net);
	struct tipc_subscription *sub;

	if (FUNC9(s, filter) & TIPC_SUB_CANCEL) {
		s->filter &= FUNC0(~TIPC_SUB_CANCEL);
		FUNC7(con, s);
		return 0;
	}
	if (FUNC2(&tn->subscription_count) >= TIPC_MAX_SUBSCR) {
		FUNC4("Subscription rejected, max (%u)\n", TIPC_MAX_SUBSCR);
		return -1;
	}
	sub = FUNC10(srv->net, s, con->conid);
	if (!sub)
		return -1;
	FUNC1(&tn->subscription_count);
	FUNC5(&con->sub_lock);
	FUNC3(&sub->sub_list, &con->sub_list);
	FUNC6(&con->sub_lock);
	return 0;
}
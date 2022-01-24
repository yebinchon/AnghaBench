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
struct tipc_node {int link_cnt; int keepalive_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  net; struct tipc_link_entry* links; } ;
struct tipc_link_entry {int /*<<< orphan*/  maddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  link; } ;
struct timer_list {int dummy; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 int TIPC_LINK_DOWN_EVT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 struct tipc_node* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 struct tipc_node* n ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_node*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*,int,char*) ; 

__attribute__((used)) static void FUNC16(struct timer_list *t)
{
	struct tipc_node *n = FUNC1(n, t, timer);
	struct tipc_link_entry *le;
	struct sk_buff_head xmitq;
	int remains = n->link_cnt;
	int bearer_id;
	int rc = 0;

	FUNC15(n, false, " ");
	if (!FUNC4(n) && FUNC10(n)) {
		/*Removing the reference of Timer*/
		FUNC12(n);
		return;
	}

	FUNC0(&xmitq);

	/* Initial node interval to value larger (10 seconds), then it will be
	 * recalculated with link lowest tolerance
	 */
	FUNC13(n);
	n->keepalive_intv = 10000;
	FUNC14(n);
	for (bearer_id = 0; remains && (bearer_id < MAX_BEARERS); bearer_id++) {
		FUNC13(n);
		le = &n->links[bearer_id];
		if (le->link) {
			FUNC5(&le->lock);
			/* Link tolerance may change asynchronously: */
			FUNC9(n, le->link);
			rc = FUNC8(le->link, &xmitq);
			FUNC6(&le->lock);
			remains--;
		}
		FUNC14(n);
		FUNC7(n->net, bearer_id, &xmitq, &le->maddr);
		if (rc & TIPC_LINK_DOWN_EVT)
			FUNC11(n, bearer_id, false);
	}
	FUNC2(&n->timer, jiffies + FUNC3(n->keepalive_intv));
}
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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct tipc_monitor {int dom_gen; int /*<<< orphan*/  lock; TYPE_1__ cache; } ;
struct tipc_mon_state {int acked_gen; int peer_gen; } ;
struct tipc_mon_domain {void* ack_gen; scalar_t__ member_cnt; void* gen; void* len; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tipc_mon_domain*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct tipc_monitor*) ; 
 struct tipc_monitor* FUNC8 (struct net*,int) ; 

void FUNC9(struct net *net, void *data, int *dlen,
		   struct tipc_mon_state *state, int bearer_id)
{
	struct tipc_monitor *mon = FUNC8(net, bearer_id);
	struct tipc_mon_domain *dom = data;
	u16 gen = mon->dom_gen;
	u16 len;

	/* Send invalid record if not active */
	if (!FUNC7(net, mon)) {
		dom->len = 0;
		return;
	}

	/* Send only a dummy record with ack if peer has acked our last sent */
	if (FUNC2(state->acked_gen == gen)) {
		len = FUNC0(dom, 0);
		*dlen = len;
		dom->len = FUNC1(len);
		dom->gen = FUNC1(gen);
		dom->ack_gen = FUNC1(state->peer_gen);
		dom->member_cnt = 0;
		return;
	}
	/* Send the full record */
	FUNC5(&mon->lock);
	len = FUNC4(mon->cache.len);
	*dlen = len;
	FUNC3(data, &mon->cache, len);
	FUNC6(&mon->lock);
	dom->ack_gen = FUNC1(state->peer_gen);
}
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
struct tipc_peer {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; struct tipc_peer* domain; struct tipc_peer* self; struct net* net; int /*<<< orphan*/  lock; } ;
struct tipc_net {int random; struct tipc_peer** monitors; } ;
struct tipc_monitor {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; struct tipc_monitor* domain; struct tipc_monitor* self; struct net* net; int /*<<< orphan*/  lock; } ;
struct tipc_mon_domain {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; struct tipc_mon_domain* domain; struct tipc_mon_domain* self; struct net* net; int /*<<< orphan*/  lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MON_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_peer*) ; 
 struct tipc_peer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  mon_timeout ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 

int FUNC9(struct net *net, int bearer_id)
{
	struct tipc_net *tn = FUNC7(net);
	struct tipc_monitor *mon;
	struct tipc_peer *self;
	struct tipc_mon_domain *dom;

	if (tn->monitors[bearer_id])
		return 0;

	mon = FUNC2(sizeof(*mon), GFP_ATOMIC);
	self = FUNC2(sizeof(*self), GFP_ATOMIC);
	dom = FUNC2(sizeof(*dom), GFP_ATOMIC);
	if (!mon || !self || !dom) {
		FUNC1(mon);
		FUNC1(self);
		FUNC1(dom);
		return -ENOMEM;
	}
	tn->monitors[bearer_id] = mon;
	FUNC5(&mon->lock);
	mon->net = net;
	mon->peer_cnt = 1;
	mon->self = self;
	self->domain = dom;
	self->addr = FUNC8(net);
	self->is_up = true;
	self->is_head = true;
	FUNC0(&self->list);
	FUNC6(&mon->timer, mon_timeout, 0);
	mon->timer_intv = FUNC4(MON_TIMEOUT + (tn->random & 0xffff));
	FUNC3(&mon->timer, jiffies + mon->timer_intv);
	return 0;
}
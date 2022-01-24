#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_subscr {int dummy; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int /*<<< orphan*/  service_list; int /*<<< orphan*/  net; TYPE_1__ evt; } ;
struct tipc_service {int /*<<< orphan*/  lock; int /*<<< orphan*/  service_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  ranges; } ;
struct tipc_net {int /*<<< orphan*/  nametbl_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 TYPE_2__ seq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tipc_net* FUNC7 (int /*<<< orphan*/ ) ; 
 struct tipc_service* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_subscription*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_subscr*,int /*<<< orphan*/ ) ; 

void FUNC11(struct tipc_subscription *sub)
{
	struct tipc_net *tn = FUNC7(sub->net);
	struct tipc_subscr *s = &sub->evt.s;
	u32 type = FUNC10(s, seq.type);
	struct tipc_service *sc;

	FUNC5(&tn->nametbl_lock);
	sc = FUNC8(sub->net, type);
	if (!sc)
		goto exit;

	FUNC5(&sc->lock);
	FUNC3(&sub->service_list);
	FUNC9(sub);

	/* Delete service item if no more publications and subscriptions */
	if (FUNC0(&sc->ranges) && FUNC4(&sc->subscriptions)) {
		FUNC1(&sc->service_list);
		FUNC2(sc, rcu);
	}
	FUNC6(&sc->lock);
exit:
	FUNC6(&tn->nametbl_lock);
}
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
struct tipc_subscription {int /*<<< orphan*/  net; TYPE_1__ evt; } ;
struct tipc_service {int /*<<< orphan*/  lock; } ;
struct tipc_net {int /*<<< orphan*/  nametbl_lock; } ;
struct name_table {int /*<<< orphan*/ * services; } ;
struct TYPE_4__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ seq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct name_table* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC5 (int /*<<< orphan*/ ) ; 
 struct tipc_service* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tipc_service* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_service*,struct tipc_subscription*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_subscr*,int /*<<< orphan*/ ) ; 

bool FUNC10(struct tipc_subscription *sub)
{
	struct name_table *nt = FUNC4(sub->net);
	struct tipc_net *tn = FUNC5(sub->net);
	struct tipc_subscr *s = &sub->evt.s;
	u32 type = FUNC9(s, seq.type);
	struct tipc_service *sc;
	bool res = true;

	FUNC2(&tn->nametbl_lock);
	sc = FUNC7(sub->net, type);
	if (!sc)
		sc = FUNC6(type, &nt->services[FUNC0(type)]);
	if (sc) {
		FUNC2(&sc->lock);
		FUNC8(sc, sub);
		FUNC3(&sc->lock);
	} else {
		FUNC1("Failed to subscribe for {%u,%u,%u}\n", type,
			FUNC9(s, seq.lower),
			FUNC9(s, seq.upper));
		res = false;
	}
	FUNC3(&tn->nametbl_lock);
	return res;
}
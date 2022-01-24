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
typedef  scalar_t__ u32 ;
struct tipc_subscr {int dummy; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int conid; int inactive; int /*<<< orphan*/  timer; TYPE_1__ evt; int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; struct net* net; int /*<<< orphan*/  sub_list; int /*<<< orphan*/  service_list; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ lower; scalar_t__ upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TIPC_SUB_PORTS ; 
 scalar_t__ TIPC_SUB_SERVICE ; 
 scalar_t__ TIPC_WAIT_FOREVER ; 
 scalar_t__ filter ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_subscription*) ; 
 struct tipc_subscription* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_subscr*,struct tipc_subscr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_2__ seq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_subscription*) ; 
 scalar_t__ FUNC11 (struct tipc_subscr*,scalar_t__) ; 
 int /*<<< orphan*/  tipc_sub_timeout ; 

struct tipc_subscription *FUNC12(struct net *net,
					     struct tipc_subscr *s,
					     int conid)
{
	u32 filter = FUNC11(s, filter);
	struct tipc_subscription *sub;
	u32 timeout;

	if ((filter & TIPC_SUB_PORTS && filter & TIPC_SUB_SERVICE) ||
	    (FUNC11(s, seq.lower) > FUNC11(s, seq.upper))) {
		FUNC7("Subscription rejected, illegal request\n");
		return NULL;
	}
	sub = FUNC2(sizeof(*sub), GFP_ATOMIC);
	if (!sub) {
		FUNC7("Subscription rejected, no memory\n");
		return NULL;
	}
	FUNC0(&sub->service_list);
	FUNC0(&sub->sub_list);
	sub->net = net;
	sub->conid = conid;
	sub->inactive = false;
	FUNC4(&sub->evt.s, s, sizeof(*s));
	FUNC8(&sub->lock);
	FUNC3(&sub->kref);
	if (!FUNC10(sub)) {
		FUNC1(sub);
		return NULL;
	}
	FUNC9(&sub->timer, tipc_sub_timeout, 0);
	timeout = FUNC11(&sub->evt.s, timeout);
	if (timeout != TIPC_WAIT_FOREVER)
		FUNC5(&sub->timer, jiffies + FUNC6(timeout));
	return sub;
}
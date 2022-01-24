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
struct napi_struct {int weight; int (* poll ) (struct napi_struct*,int) ;int /*<<< orphan*/  poll_list; TYPE_1__* dev; scalar_t__ gro_bitmask; int /*<<< orphan*/  state; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NAPI_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct napi_struct*) ; 
 int FUNC7 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct napi_struct*,int) ; 
 void* FUNC9 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (struct napi_struct*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct napi_struct*,int,int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct napi_struct *n, struct list_head *repoll)
{
	void *have;
	int work, weight;

	FUNC4(&n->poll_list);

	have = FUNC9(n);

	weight = n->weight;

	/* This NAPI_STATE_SCHED test is for avoiding a race
	 * with netpoll's poll_napi().  Only the entity which
	 * obtains the lock and sees NAPI_STATE_SCHED set will
	 * actually make the ->poll() call.  Therefore we avoid
	 * accidentally calling ->poll() when NAPI is not scheduled.
	 */
	work = 0;
	if (FUNC13(NAPI_STATE_SCHED, &n->state)) {
		work = n->poll(n, weight);
		FUNC14(n, work, weight);
	}

	FUNC0(work > weight);

	if (FUNC2(work < weight))
		goto out_unlock;

	/* Drivers must not modify the NAPI state if they
	 * consume the entire weight.  In such cases this code
	 * still "owns" the NAPI instance and therefore can
	 * move the instance around on the list at-will.
	 */
	if (FUNC15(FUNC7(n))) {
		FUNC6(n);
		goto out_unlock;
	}

	FUNC1(n);

	if (n->gro_bitmask) {
		/* flush too old packets
		 * If HZ < 1000, flush all packets.
		 */
		FUNC8(n, HZ >= 1000);
	}

	/* Some drivers may have called napi_schedule
	 * prior to exhausting their budget.
	 */
	if (FUNC15(!FUNC5(&n->poll_list))) {
		FUNC11("%s: Budget exhausted after napi rescheduled\n",
			     n->dev ? n->dev->name : "backlog");
		goto out_unlock;
	}

	FUNC3(&n->poll_list, repoll);

out_unlock:
	FUNC10(have);

	return work;
}
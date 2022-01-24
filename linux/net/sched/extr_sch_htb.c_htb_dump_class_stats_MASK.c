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
struct TYPE_4__ {void* ctokens; void* tokens; } ;
struct TYPE_3__ {scalar_t__ q; } ;
struct htb_class {TYPE_2__ xstats; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  ctokens; int /*<<< orphan*/  tokens; TYPE_1__ leaf; int /*<<< orphan*/  level; int /*<<< orphan*/  overlimits; int /*<<< orphan*/  drops; } ;
struct gnet_stats_queue {int /*<<< orphan*/  backlog; int /*<<< orphan*/  overlimits; int /*<<< orphan*/  drops; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gnet_dump*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct gnet_dump*,int /*<<< orphan*/ *,struct gnet_stats_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  s64 ; 

__attribute__((used)) static int
FUNC8(struct Qdisc *sch, unsigned long arg, struct gnet_dump *d)
{
	struct htb_class *cl = (struct htb_class *)arg;
	struct gnet_stats_queue qs = {
		.drops = cl->drops,
		.overlimits = cl->overlimits,
	};
	__u32 qlen = 0;

	if (!cl->level && cl->leaf.q)
		FUNC6(cl->leaf.q, &qlen, &qs.backlog);

	cl->xstats.tokens = FUNC1(s64, FUNC0(cl->tokens),
				    INT_MIN, INT_MAX);
	cl->xstats.ctokens = FUNC1(s64, FUNC0(cl->ctokens),
				     INT_MIN, INT_MAX);

	if (FUNC3(FUNC7(sch),
				  d, NULL, &cl->bstats) < 0 ||
	    FUNC5(d, &cl->rate_est) < 0 ||
	    FUNC4(d, NULL, &qs, qlen) < 0)
		return -1;

	return FUNC2(d, &cl->xstats, sizeof(cl->xstats));
}
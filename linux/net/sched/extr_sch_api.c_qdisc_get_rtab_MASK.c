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
struct tc_ratespec {scalar_t__ rate; scalar_t__ cell_log; int /*<<< orphan*/  linklayer; } ;
struct qdisc_rate_table {int refcnt; struct qdisc_rate_table* next; struct tc_ratespec data; struct tc_ratespec rate; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TC_LINKLAYER_UNAWARE ; 
 scalar_t__ TC_RTAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct tc_ratespec*,struct tc_ratespec) ; 
 struct qdisc_rate_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tc_ratespec*,struct tc_ratespec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_ratespec,struct tc_ratespec*,int) ; 
 struct tc_ratespec* FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 struct qdisc_rate_table* qdisc_rtab_list ; 

struct qdisc_rate_table *FUNC7(struct tc_ratespec *r,
					struct nlattr *tab,
					struct netlink_ext_ack *extack)
{
	struct qdisc_rate_table *rtab;

	if (tab == NULL || r->rate == 0 || r->cell_log == 0 ||
	    FUNC6(tab) != TC_RTAB_SIZE) {
		FUNC0(extack, "Invalid rate table parameters for searching");
		return NULL;
	}

	for (rtab = qdisc_rtab_list; rtab; rtab = rtab->next) {
		if (!FUNC3(&rtab->rate, r, sizeof(struct tc_ratespec)) &&
		    !FUNC3(&rtab->data, FUNC5(tab), 1024)) {
			rtab->refcnt++;
			return rtab;
		}
	}

	rtab = FUNC2(sizeof(*rtab), GFP_KERNEL);
	if (rtab) {
		rtab->rate = *r;
		rtab->refcnt = 1;
		FUNC4(rtab->data, FUNC5(tab), 1024);
		if (r->linklayer == TC_LINKLAYER_UNAWARE)
			r->linklayer = FUNC1(r, rtab->data);
		rtab->next = qdisc_rtab_list;
		qdisc_rtab_list = rtab;
	} else {
		FUNC0(extack, "Failed to allocate new qdisc rate table");
	}
	return rtab;
}
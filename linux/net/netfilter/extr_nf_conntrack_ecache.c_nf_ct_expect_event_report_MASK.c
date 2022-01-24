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
typedef  int /*<<< orphan*/  u32 ;
struct nf_exp_event_notifier {int /*<<< orphan*/  (* fcn ) (int,struct nf_exp_event*) ;} ;
struct nf_exp_event {int report; int /*<<< orphan*/  portid; struct nf_conntrack_expect* exp; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  master; } ;
struct nf_conntrack_ecache {int expmask; } ;
struct TYPE_2__ {int /*<<< orphan*/  nf_expect_event_cb; } ;
struct net {TYPE_1__ ct; } ;
typedef  enum ip_conntrack_expect_events { ____Placeholder_ip_conntrack_expect_events } ip_conntrack_expect_events ;

/* Variables and functions */
 struct nf_conntrack_ecache* FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct nf_conntrack_expect*) ; 
 struct nf_exp_event_notifier* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,struct nf_exp_event*) ; 

void FUNC6(enum ip_conntrack_expect_events event,
			       struct nf_conntrack_expect *exp,
			       u32 portid, int report)

{
	struct net *net = FUNC1(exp);
	struct nf_exp_event_notifier *notify;
	struct nf_conntrack_ecache *e;

	FUNC3();
	notify = FUNC2(net->ct.nf_expect_event_cb);
	if (!notify)
		goto out_unlock;

	e = FUNC0(exp->master);
	if (!e)
		goto out_unlock;

	if (e->expmask & (1 << event)) {
		struct nf_exp_event item = {
			.exp	= exp,
			.portid	= portid,
			.report = report
		};
		notify->fcn(1 << event, &item);
	}
out_unlock:
	FUNC4();
}
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
struct nf_ct_event_notifier {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nf_conntrack_event_cb; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_ecache_mutex ; 
 struct nf_ct_event_notifier* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct net *net,
				      struct nf_ct_event_notifier *new)
{
	struct nf_ct_event_notifier *notify;

	FUNC3(&nf_ct_ecache_mutex);
	notify = FUNC5(net->ct.nf_conntrack_event_cb,
					   FUNC2(&nf_ct_ecache_mutex));
	FUNC0(notify != new);
	FUNC1(net->ct.nf_conntrack_event_cb, NULL);
	FUNC4(&nf_ct_ecache_mutex);
	/* synchronize_rcu() is called from ctnetlink_exit. */
}
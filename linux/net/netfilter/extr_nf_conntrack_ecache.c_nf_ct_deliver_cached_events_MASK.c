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
struct nf_ct_event_notifier {int (* fcn ) (unsigned long,struct nf_ct_event*) ;} ;
struct nf_ct_event {scalar_t__ report; scalar_t__ portid; struct nf_conn* ct; } ;
struct nf_conntrack_ecache {unsigned long missed; unsigned long ctmask; int /*<<< orphan*/  cache; } ;
struct nf_conn {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  nf_conntrack_event_cb; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct nf_conntrack_ecache* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct nf_conn*) ; 
 struct net* FUNC4 (struct nf_conn*) ; 
 struct nf_ct_event_notifier* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned long,struct nf_ct_event*) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC12(struct nf_conn *ct)
{
	struct net *net = FUNC4(ct);
	unsigned long events, missed;
	struct nf_ct_event_notifier *notify;
	struct nf_conntrack_ecache *e;
	struct nf_ct_event item;
	int ret;

	FUNC6();
	notify = FUNC5(net->ct.nf_conntrack_event_cb);
	if (notify == NULL)
		goto out_unlock;

	e = FUNC1(ct);
	if (e == NULL)
		goto out_unlock;

	events = FUNC11(&e->cache, 0);

	if (!FUNC2(ct) || FUNC3(ct))
		goto out_unlock;

	/* We make a copy of the missed event cache without taking
	 * the lock, thus we may send missed events twice. However,
	 * this does not harm and it happens very rarely. */
	missed = e->missed;

	if (!((events | missed) & e->ctmask))
		goto out_unlock;

	item.ct = ct;
	item.portid = 0;
	item.report = 0;

	ret = notify->fcn(events | missed, &item);

	if (FUNC0(ret == 0 && !missed))
		goto out_unlock;

	FUNC8(&ct->lock);
	if (ret < 0)
		e->missed |= events;
	else
		e->missed &= ~missed;
	FUNC9(&ct->lock);

out_unlock:
	FUNC7();
}
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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_ecache_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nf_ct_event_notifier*) ; 
 struct nf_ct_event_notifier* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct net *net,
				   struct nf_ct_event_notifier *new)
{
	int ret;
	struct nf_ct_event_notifier *notify;

	FUNC1(&nf_ct_ecache_mutex);
	notify = FUNC4(net->ct.nf_conntrack_event_cb,
					   FUNC0(&nf_ct_ecache_mutex));
	if (notify != NULL) {
		ret = -EBUSY;
		goto out_unlock;
	}
	FUNC3(net->ct.nf_conntrack_event_cb, new);
	ret = 0;

out_unlock:
	FUNC2(&nf_ct_ecache_mutex);
	return ret;
}
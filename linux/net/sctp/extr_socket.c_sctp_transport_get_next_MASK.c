#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_transport {TYPE_3__* asoc; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_5__ {struct sctp_transport* primary_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {TYPE_2__ peer; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_transport*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct net*) ; 
 struct sctp_transport* FUNC3 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct sctp_transport *FUNC7(struct net *net,
					       struct rhashtable_iter *iter)
{
	struct sctp_transport *t;

	t = FUNC3(iter);
	for (; t; t = FUNC3(iter)) {
		if (FUNC0(t)) {
			if (FUNC1(t) == -EAGAIN)
				continue;
			break;
		}

		if (!FUNC4(t))
			continue;

		if (FUNC2(FUNC6(t->asoc->base.sk), net) &&
		    t->asoc->peer.primary_path == t)
			break;

		FUNC5(t);
	}

	return t;
}
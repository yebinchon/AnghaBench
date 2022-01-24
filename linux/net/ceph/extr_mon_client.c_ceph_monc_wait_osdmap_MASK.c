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
struct ceph_mon_client {int /*<<< orphan*/  mutex; TYPE_2__* subs; TYPE_1__* client; } ;
struct TYPE_4__ {scalar_t__ have; } ;
struct TYPE_3__ {int /*<<< orphan*/  auth_wq; } ;

/* Variables and functions */
 size_t CEPH_SUB_OSDMAP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct ceph_mon_client *monc, u32 epoch,
			  unsigned long timeout)
{
	unsigned long started = jiffies;
	long ret;

	FUNC1(&monc->mutex);
	while (monc->subs[CEPH_SUB_OSDMAP].have < epoch) {
		FUNC2(&monc->mutex);

		if (timeout && FUNC3(jiffies, started + timeout))
			return -ETIMEDOUT;

		ret = FUNC4(monc->client->auth_wq,
				     monc->subs[CEPH_SUB_OSDMAP].have >= epoch,
				     FUNC0(timeout));
		if (ret < 0)
			return ret;

		FUNC1(&monc->mutex);
	}

	FUNC2(&monc->mutex);
	return 0;
}
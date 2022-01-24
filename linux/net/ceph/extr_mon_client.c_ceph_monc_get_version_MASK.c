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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  newest; } ;
struct ceph_mon_generic_request {TYPE_1__ u; } ;
struct ceph_mon_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ceph_mon_generic_request*) ; 
 int FUNC1 (struct ceph_mon_generic_request*) ; 
 struct ceph_mon_generic_request* FUNC2 (struct ceph_mon_client*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mon_generic_request*) ; 
 int FUNC4 (struct ceph_mon_generic_request*) ; 

int FUNC5(struct ceph_mon_client *monc, const char *what,
			  u64 *newest)
{
	struct ceph_mon_generic_request *req;
	int ret;

	req = FUNC2(monc, what, NULL, 0);
	if (FUNC0(req))
		return FUNC1(req);

	ret = FUNC4(req);
	if (!ret)
		*newest = req->u.newest;

	FUNC3(req);
	return ret;
}
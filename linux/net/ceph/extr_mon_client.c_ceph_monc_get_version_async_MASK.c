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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_mon_generic_request {int dummy; } ;
struct ceph_mon_client {int dummy; } ;
typedef  int /*<<< orphan*/  ceph_monc_callback_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ceph_mon_generic_request*) ; 
 int FUNC1 (struct ceph_mon_generic_request*) ; 
 struct ceph_mon_generic_request* FUNC2 (struct ceph_mon_client*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mon_generic_request*) ; 

int FUNC4(struct ceph_mon_client *monc, const char *what,
				ceph_monc_callback_t cb, u64 private_data)
{
	struct ceph_mon_generic_request *req;

	req = FUNC2(monc, what, cb, private_data);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC3(req);
	return 0;
}
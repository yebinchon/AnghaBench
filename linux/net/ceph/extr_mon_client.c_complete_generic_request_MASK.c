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
struct ceph_mon_generic_request {int /*<<< orphan*/  completion; int /*<<< orphan*/  (* complete_cb ) (struct ceph_mon_generic_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mon_generic_request*) ; 

__attribute__((used)) static void FUNC3(struct ceph_mon_generic_request *req)
{
	if (req->complete_cb)
		req->complete_cb(req);
	else
		FUNC0(&req->completion);
	FUNC1(req);
}
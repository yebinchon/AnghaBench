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
struct ceph_osd_request {int /*<<< orphan*/  r_t; int /*<<< orphan*/  r_private_item; int /*<<< orphan*/  r_mc_node; int /*<<< orphan*/  r_node; int /*<<< orphan*/  r_completion; int /*<<< orphan*/  r_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ceph_osd_request *req)
{
	/* req only, each op is zeroed in _osd_req_op_init() */
	FUNC4(req, 0, sizeof(*req));

	FUNC3(&req->r_kref);
	FUNC2(&req->r_completion);
	FUNC1(&req->r_node);
	FUNC1(&req->r_mc_node);
	FUNC0(&req->r_private_item);

	FUNC5(&req->r_t);
}
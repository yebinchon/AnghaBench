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
struct ceph_mon_generic_request {scalar_t__ tid; struct ceph_mon_client* monc; } ;
struct ceph_mon_client {int /*<<< orphan*/  generic_request_tree; scalar_t__ last_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_mon_generic_request*) ; 

__attribute__((used)) static void FUNC3(struct ceph_mon_generic_request *req)
{
	struct ceph_mon_client *monc = req->monc;

	FUNC0(req->tid);

	FUNC1(req);
	req->tid = ++monc->last_tid;
	FUNC2(&monc->generic_request_tree, req);
}
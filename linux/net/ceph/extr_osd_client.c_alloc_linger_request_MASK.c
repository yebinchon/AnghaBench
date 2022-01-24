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
struct ceph_osd_request {int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct TYPE_2__ {int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;
struct ceph_osd_linger_request {TYPE_1__ t; int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ceph_osd_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ceph_osd_request *
FUNC3(struct ceph_osd_linger_request *lreq)
{
	struct ceph_osd_request *req;

	req = FUNC2(lreq->osdc, NULL, 1, false, GFP_NOIO);
	if (!req)
		return NULL;

	FUNC0(&req->r_base_oid, &lreq->t.base_oid);
	FUNC1(&req->r_base_oloc, &lreq->t.base_oloc);
	return req;
}
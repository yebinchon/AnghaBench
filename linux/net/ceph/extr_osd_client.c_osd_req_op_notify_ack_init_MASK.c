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
typedef  int /*<<< orphan*/  u32 ;
struct ceph_pagelist {int /*<<< orphan*/  length; } ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_data; } ;
struct ceph_osd_req_op {int /*<<< orphan*/  indata_len; TYPE_1__ notify_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_OP_NOTIFY_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct ceph_osd_req_op* FUNC0 (struct ceph_osd_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ceph_pagelist*) ; 
 struct ceph_pagelist* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ceph_pagelist*,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_pagelist*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ceph_pagelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_pagelist*) ; 

__attribute__((used)) static int FUNC7(struct ceph_osd_request *req, int which,
				      u64 notify_id, u64 cookie, void *payload,
				      u32 payload_len)
{
	struct ceph_osd_req_op *op;
	struct ceph_pagelist *pl;
	int ret;

	op = FUNC0(req, which, CEPH_OSD_OP_NOTIFY_ACK, 0);

	pl = FUNC2(GFP_NOIO);
	if (!pl)
		return -ENOMEM;

	ret = FUNC5(pl, notify_id);
	ret |= FUNC5(pl, cookie);
	if (payload) {
		ret |= FUNC4(pl, payload_len);
		ret |= FUNC3(pl, payload, payload_len);
	} else {
		ret |= FUNC4(pl, 0);
	}
	if (ret) {
		FUNC6(pl);
		return -ENOMEM;
	}

	FUNC1(&op->notify_ack.request_data, pl);
	op->indata_len = pl->length;
	return 0;
}
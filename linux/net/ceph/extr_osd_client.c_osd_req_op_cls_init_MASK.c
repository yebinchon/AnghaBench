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
struct ceph_pagelist {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {char const* class_name; size_t class_len; char const* method_name; size_t method_len; } ;
struct ceph_osd_req_op {size_t indata_len; TYPE_1__ cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_OSD_OP_CALL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ U8_MAX ; 
 struct ceph_osd_req_op* FUNC1 (struct ceph_osd_request*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ceph_pagelist* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ceph_pagelist*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_pagelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_request*,unsigned int,struct ceph_pagelist*) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(struct ceph_osd_request *osd_req, unsigned int which,
			const char *class, const char *method)
{
	struct ceph_osd_req_op *op;
	struct ceph_pagelist *pagelist;
	size_t payload_len = 0;
	size_t size;
	int ret;

	op = FUNC1(osd_req, which, CEPH_OSD_OP_CALL, 0);

	pagelist = FUNC2(GFP_NOFS);
	if (!pagelist)
		return -ENOMEM;

	op->cls.class_name = class;
	size = FUNC6(class);
	FUNC0(size > (size_t) U8_MAX);
	op->cls.class_len = size;
	ret = FUNC3(pagelist, class, size);
	if (ret)
		goto err_pagelist_free;
	payload_len += size;

	op->cls.method_name = method;
	size = FUNC6(method);
	FUNC0(size > (size_t) U8_MAX);
	op->cls.method_len = size;
	ret = FUNC3(pagelist, method, size);
	if (ret)
		goto err_pagelist_free;
	payload_len += size;

	FUNC5(osd_req, which, pagelist);
	op->indata_len = payload_len;
	return 0;

err_pagelist_free:
	FUNC4(pagelist);
	return ret;
}
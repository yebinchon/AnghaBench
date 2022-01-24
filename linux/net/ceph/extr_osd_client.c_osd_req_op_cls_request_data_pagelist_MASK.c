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
struct ceph_pagelist {scalar_t__ length; } ;
struct ceph_osd_request {TYPE_2__* r_ops; } ;
struct ceph_osd_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  indata_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  indata_len; TYPE_1__ cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_data*,struct ceph_pagelist*) ; 
 int /*<<< orphan*/  cls ; 
 struct ceph_osd_data* FUNC1 (struct ceph_osd_request*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_data ; 

void FUNC2(
			struct ceph_osd_request *osd_req,
			unsigned int which, struct ceph_pagelist *pagelist)
{
	struct ceph_osd_data *osd_data;

	osd_data = FUNC1(osd_req, which, cls, request_data);
	FUNC0(osd_data, pagelist);
	osd_req->r_ops[which].cls.indata_len += pagelist->length;
	osd_req->r_ops[which].indata_len += pagelist->length;
}
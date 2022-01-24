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
struct ceph_pagelist {scalar_t__ length; int /*<<< orphan*/  refcnt; } ;
struct ceph_msg_data {struct ceph_pagelist* pagelist; int /*<<< orphan*/  type; } ;
struct ceph_msg {int /*<<< orphan*/  data_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_MSG_DATA_PAGELIST ; 
 struct ceph_msg_data* FUNC1 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ceph_msg *msg,
				struct ceph_pagelist *pagelist)
{
	struct ceph_msg_data *data;

	FUNC0(!pagelist);
	FUNC0(!pagelist->length);

	data = FUNC1(msg);
	data->type = CEPH_MSG_DATA_PAGELIST;
	FUNC2(&pagelist->refcnt);
	data->pagelist = pagelist;

	msg->data_length += pagelist->length;
}
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
struct ceph_auth_client {int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* should_authenticate ) (struct ceph_auth_client*) ;} ;

/* Variables and functions */
 int FUNC0 (struct ceph_auth_client*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ceph_auth_client*) ; 

int FUNC4(struct ceph_auth_client *ac,
		    void *msg_buf, size_t msg_len)
{
	int ret = 0;

	FUNC1(&ac->mutex);
	if (ac->ops->should_authenticate(ac))
		ret = FUNC0(ac, msg_buf, msg_len);
	FUNC2(&ac->mutex);
	return ret;
}
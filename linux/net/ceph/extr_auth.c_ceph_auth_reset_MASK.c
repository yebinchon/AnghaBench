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
struct ceph_auth_client {int negotiating; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct ceph_auth_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ceph_auth_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_auth_client*) ; 

void FUNC4(struct ceph_auth_client *ac)
{
	FUNC1(&ac->mutex);
	FUNC0("auth_reset %p\n", ac);
	if (ac->ops && !ac->negotiating)
		ac->ops->reset(ac);
	ac->negotiating = true;
	FUNC2(&ac->mutex);
}
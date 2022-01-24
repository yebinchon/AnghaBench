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
struct ceph_x_info {int starting; int /*<<< orphan*/  ticket_handlers; int /*<<< orphan*/  secret; } ;
struct ceph_auth_client {int /*<<< orphan*/ * ops; struct ceph_x_info* private; int /*<<< orphan*/  protocol; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_AUTH_CEPHX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ceph_x_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_auth_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_x_info*) ; 
 struct ceph_x_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct ceph_auth_client *ac)
{
	struct ceph_x_info *xi;
	int ret;

	FUNC1("ceph_x_init %p\n", ac);
	ret = -ENOMEM;
	xi = FUNC3(sizeof(*xi), GFP_NOFS);
	if (!xi)
		goto out;

	ret = -EINVAL;
	if (!ac->key) {
		FUNC4("no secret set (for auth_x protocol)\n");
		goto out_nomem;
	}

	ret = FUNC0(&xi->secret, ac->key);
	if (ret < 0) {
		FUNC4("cannot clone key: %d\n", ret);
		goto out_nomem;
	}

	xi->starting = true;
	xi->ticket_handlers = RB_ROOT;

	ac->protocol = CEPH_AUTH_CEPHX;
	ac->private = xi;
	ac->ops = &ceph_x_ops;
	return 0;

out_nomem:
	FUNC2(xi);
out:
	return ret;
}
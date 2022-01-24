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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct tomoyo_mount_acl {int /*<<< orphan*/  flags; int /*<<< orphan*/  fs_type; int /*<<< orphan*/  dir_name; int /*<<< orphan*/  dev_name; TYPE_1__ head; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TOMOYO_TYPE_MOUNT_ACL ; 
 int /*<<< orphan*/  FUNC0 (struct tomoyo_acl_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_acl_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomoyo_same_mount_acl ; 
 int FUNC4 (TYPE_1__*,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tomoyo_acl_param *param)
{
	struct tomoyo_mount_acl e = { .head.type = TOMOYO_TYPE_MOUNT_ACL };
	int error;

	if (!FUNC0(param, &e.dev_name) ||
	    !FUNC0(param, &e.dir_name) ||
	    !FUNC0(param, &e.fs_type) ||
	    !FUNC1(param, &e.flags))
		error = -EINVAL;
	else
		error = FUNC4(&e.head, sizeof(e), param,
					     tomoyo_same_mount_acl, NULL);
	FUNC2(&e.dev_name);
	FUNC2(&e.dir_name);
	FUNC2(&e.fs_type);
	FUNC3(&e.flags);
	return error;
}
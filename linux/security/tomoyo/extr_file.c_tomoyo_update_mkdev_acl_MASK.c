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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct tomoyo_mkdev_acl {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; TYPE_1__ head; int /*<<< orphan*/  const perm; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TOMOYO_TYPE_MKDEV_ACL ; 
 int /*<<< orphan*/  tomoyo_merge_mkdev_acl ; 
 int /*<<< orphan*/  FUNC0 (struct tomoyo_acl_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_acl_param*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomoyo_same_mkdev_acl ; 
 int FUNC4 (TYPE_1__*,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const u8 perm,
				   struct tomoyo_acl_param *param)
{
	struct tomoyo_mkdev_acl e = {
		.head.type = TOMOYO_TYPE_MKDEV_ACL,
		.perm = perm
	};
	int error;

	if (!FUNC0(param, &e.name) ||
	    !FUNC1(param, &e.mode) ||
	    !FUNC1(param, &e.major) ||
	    !FUNC1(param, &e.minor))
		error = -EINVAL;
	else
		error = FUNC4(&e.head, sizeof(e), param,
					     tomoyo_same_mkdev_acl,
					     tomoyo_merge_mkdev_acl);
	FUNC2(&e.name);
	FUNC3(&e.mode);
	FUNC3(&e.major);
	FUNC3(&e.minor);
	return error;
}
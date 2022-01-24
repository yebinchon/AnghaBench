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
struct tomoyo_task_acl {scalar_t__ domainname; TYPE_1__ head; } ;
struct tomoyo_acl_param {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TOMOYO_TYPE_MANUAL_TASK_ACL ; 
 scalar_t__ FUNC0 (struct tomoyo_acl_param*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  tomoyo_same_task_acl ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_1__*,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tomoyo_acl_param *param)
{
	int error = -EINVAL;

	if (FUNC2(&param->data, "manual_domain_transition ")) {
		struct tomoyo_task_acl e = {
			.head.type = TOMOYO_TYPE_MANUAL_TASK_ACL,
			.domainname = FUNC0(param),
		};

		if (e.domainname)
			error = FUNC3(&e.head, sizeof(e), param,
						     tomoyo_same_task_acl,
						     NULL);
		FUNC1(e.domainname);
	}
	return error;
}
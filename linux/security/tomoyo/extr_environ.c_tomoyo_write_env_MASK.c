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
struct tomoyo_env_acl {int /*<<< orphan*/  env; TYPE_1__ head; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TOMOYO_TYPE_ENV_ACL ; 
 scalar_t__ FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct tomoyo_acl_param*) ; 
 int /*<<< orphan*/  tomoyo_same_env_acl ; 
 int FUNC5 (TYPE_1__*,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct tomoyo_acl_param *param)
{
	struct tomoyo_env_acl e = { .head.type = TOMOYO_TYPE_ENV_ACL };
	int error = -ENOMEM;
	const char *data = FUNC4(param);

	if (!FUNC1(data) || FUNC0(data, '='))
		return -EINVAL;
	e.env = FUNC2(data);
	if (!e.env)
		return error;
	error = FUNC5(&e.head, sizeof(e), param,
				  tomoyo_same_env_acl, NULL);
	FUNC3(e.env);
	return error;
}
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
struct TYPE_3__ {struct tomoyo_path_info* name; } ;
struct TYPE_4__ {TYPE_1__ environ; } ;
struct tomoyo_request_info {TYPE_2__ param; int /*<<< orphan*/  param_type; } ;
struct tomoyo_path_info {char const* name; } ;

/* Variables and functions */
 int TOMOYO_RETRY_REQUEST ; 
 int /*<<< orphan*/  TOMOYO_TYPE_ENV_ACL ; 
 int FUNC0 (struct tomoyo_request_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_request_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tomoyo_check_env_acl ; 
 int /*<<< orphan*/  FUNC2 (struct tomoyo_path_info*) ; 

int FUNC3(struct tomoyo_request_info *r, const char *env)
{
	struct tomoyo_path_info environ;
	int error;

	if (!env || !*env)
		return 0;
	environ.name = env;
	FUNC2(&environ);
	r->param_type = TOMOYO_TYPE_ENV_ACL;
	r->param.environ.name = &environ;
	do {
		FUNC1(r, tomoyo_check_env_acl);
		error = FUNC0(r);
	} while (error == TOMOYO_RETRY_REQUEST);
	return error;
}
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
typedef  scalar_t__ u8 ;
struct tomoyo_transition_control {scalar_t__ const type; int is_last_name; void* program; void* domainname; int /*<<< orphan*/  head; } ;
struct tomoyo_acl_param {char* data; TYPE_1__* ns; int /*<<< orphan*/ * list; scalar_t__ is_delete; } ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_2__ {int /*<<< orphan*/ * policy_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 size_t TOMOYO_ID_TRANSITION_CONTROL ; 
 scalar_t__ const TOMOYO_TRANSITION_CONTROL_KEEP ; 
 scalar_t__ const TOMOYO_TRANSITION_CONTROL_NO_KEEP ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  tomoyo_same_transition_control ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ) ; 

int FUNC7(struct tomoyo_acl_param *param,
				    const u8 type)
{
	struct tomoyo_transition_control e = { .type = type };
	int error = param->is_delete ? -ENOENT : -ENOMEM;
	char *program = param->data;
	char *domainname = FUNC1(program, " from ");

	if (domainname) {
		*domainname = '\0';
		domainname += 6;
	} else if (type == TOMOYO_TRANSITION_CONTROL_NO_KEEP ||
		   type == TOMOYO_TRANSITION_CONTROL_KEEP) {
		domainname = program;
		program = NULL;
	}
	if (program && FUNC0(program, "any")) {
		if (!FUNC3(program))
			return -EINVAL;
		e.program = FUNC4(program);
		if (!e.program)
			goto out;
	}
	if (domainname && FUNC0(domainname, "any")) {
		if (!FUNC2(domainname)) {
			if (!FUNC3(domainname))
				goto out;
			e.is_last_name = true;
		}
		e.domainname = FUNC4(domainname);
		if (!e.domainname)
			goto out;
	}
	param->list = &param->ns->policy_list[TOMOYO_ID_TRANSITION_CONTROL];
	error = FUNC6(&e.head, sizeof(e), param,
				     tomoyo_same_transition_control);
out:
	FUNC5(e.domainname);
	FUNC5(e.program);
	return error;
}
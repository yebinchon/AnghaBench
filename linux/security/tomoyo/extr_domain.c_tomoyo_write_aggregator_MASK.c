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
struct tomoyo_aggregator {TYPE_2__* aggregated_name; TYPE_2__* original_name; int /*<<< orphan*/  head; } ;
struct tomoyo_acl_param {TYPE_1__* ns; int /*<<< orphan*/ * list; scalar_t__ is_delete; } ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_4__ {scalar_t__ is_patterned; } ;
struct TYPE_3__ {int /*<<< orphan*/ * policy_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 size_t TOMOYO_ID_AGGREGATOR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (struct tomoyo_acl_param*) ; 
 int /*<<< orphan*/  tomoyo_same_aggregator ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct tomoyo_acl_param*,int /*<<< orphan*/ ) ; 

int FUNC6(struct tomoyo_acl_param *param)
{
	struct tomoyo_aggregator e = { };
	int error = param->is_delete ? -ENOENT : -ENOMEM;
	const char *original_name = FUNC4(param);
	const char *aggregated_name = FUNC4(param);

	if (!FUNC1(original_name) ||
	    !FUNC0(aggregated_name))
		return -EINVAL;
	e.original_name = FUNC2(original_name);
	e.aggregated_name = FUNC2(aggregated_name);
	if (!e.original_name || !e.aggregated_name ||
	    e.aggregated_name->is_patterned) /* No patterns allowed. */
		goto out;
	param->list = &param->ns->policy_list[TOMOYO_ID_AGGREGATOR];
	error = FUNC5(&e.head, sizeof(e), param,
				     tomoyo_same_aggregator);
out:
	FUNC3(e.original_name);
	FUNC3(e.aggregated_name);
	return error;
}
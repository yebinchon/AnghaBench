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
typedef  size_t u8 ;
struct TYPE_3__ {int is_delete; TYPE_2__* ns; } ;
struct tomoyo_io_buffer {TYPE_1__ w; int /*<<< orphan*/  write_buf; } ;
struct tomoyo_acl_param {int const is_delete; int /*<<< orphan*/  data; TYPE_2__* ns; } ;
struct TYPE_4__ {int /*<<< orphan*/ * acl_group; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int TOMOYO_MAX_ACL_GROUPS ; 
 size_t TOMOYO_MAX_GROUP ; 
 size_t TOMOYO_MAX_TRANSITION_TYPE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,char**,int) ; 
 char** tomoyo_group_name ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char** tomoyo_transition_type ; 
 int FUNC2 (struct tomoyo_acl_param*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,char*,int const) ; 
 int FUNC4 (struct tomoyo_acl_param*,size_t) ; 
 int FUNC5 (struct tomoyo_acl_param*,size_t) ; 

__attribute__((used)) static int FUNC6(struct tomoyo_io_buffer *head)
{
	const bool is_delete = head->w.is_delete;
	struct tomoyo_acl_param param = {
		.ns = head->w.ns,
		.is_delete = is_delete,
		.data = head->write_buf,
	};
	u8 i;

	if (FUNC1(&param.data, "aggregator "))
		return FUNC2(&param);
	for (i = 0; i < TOMOYO_MAX_TRANSITION_TYPE; i++)
		if (FUNC1(&param.data, tomoyo_transition_type[i]))
			return FUNC5(&param, i);
	for (i = 0; i < TOMOYO_MAX_GROUP; i++)
		if (FUNC1(&param.data, tomoyo_group_name[i]))
			return FUNC4(&param, i);
	if (FUNC1(&param.data, "acl_group ")) {
		unsigned int group;
		char *data;

		group = FUNC0(param.data, &data, 10);
		if (group < TOMOYO_MAX_ACL_GROUPS && *data++ == ' ')
			return FUNC3
				(head->w.ns, &head->w.ns->acl_group[group],
				 data, is_delete);
	}
	return -EINVAL;
}
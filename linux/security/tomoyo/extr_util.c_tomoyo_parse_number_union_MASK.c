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
typedef  scalar_t__ u8 ;
struct tomoyo_number_union {unsigned long* values; scalar_t__* value_type; int /*<<< orphan*/ * group; } ;
struct tomoyo_acl_param {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOMOYO_NUMBER_GROUP ; 
 scalar_t__ TOMOYO_VALUE_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct tomoyo_number_union*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct tomoyo_acl_param*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long*,char**) ; 
 char* FUNC3 (struct tomoyo_acl_param*) ; 

bool FUNC4(struct tomoyo_acl_param *param,
			       struct tomoyo_number_union *ptr)
{
	char *data;
	u8 type;
	unsigned long v;

	FUNC0(ptr, 0, sizeof(*ptr));
	if (param->data[0] == '@') {
		param->data++;
		ptr->group = FUNC1(param, TOMOYO_NUMBER_GROUP);
		return ptr->group != NULL;
	}
	data = FUNC3(param);
	type = FUNC2(&v, &data);
	if (type == TOMOYO_VALUE_TYPE_INVALID)
		return false;
	ptr->values[0] = v;
	ptr->value_type[0] = type;
	if (!*data) {
		ptr->values[1] = v;
		ptr->value_type[1] = type;
		return true;
	}
	if (*data++ != '-')
		return false;
	type = FUNC2(&v, &data);
	if (type == TOMOYO_VALUE_TYPE_INVALID || *data || ptr->values[0] > v)
		return false;
	ptr->values[1] = v;
	ptr->value_type[1] = type;
	return true;
}
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
struct tomoyo_name_union {int /*<<< orphan*/ * filename; int /*<<< orphan*/ * group; } ;
struct tomoyo_acl_param {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOMOYO_PATH_GROUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct tomoyo_acl_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 char* FUNC3 (struct tomoyo_acl_param*) ; 

bool FUNC4(struct tomoyo_acl_param *param,
			     struct tomoyo_name_union *ptr)
{
	char *filename;

	if (param->data[0] == '@') {
		param->data++;
		ptr->group = FUNC1(param, TOMOYO_PATH_GROUP);
		return ptr->group != NULL;
	}
	filename = FUNC3(param);
	if (!FUNC0(filename))
		return false;
	ptr->filename = FUNC2(filename);
	return ptr->filename != NULL;
}
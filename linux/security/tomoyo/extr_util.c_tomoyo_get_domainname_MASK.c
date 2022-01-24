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
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_acl_param {char* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 struct tomoyo_path_info const* FUNC1 (char*) ; 

const struct tomoyo_path_info *FUNC2
(struct tomoyo_acl_param *param)
{
	char *start = param->data;
	char *pos = start;

	while (*pos) {
		if (*pos++ != ' ' || *pos++ == '/')
			continue;
		pos -= 2;
		*pos++ = '\0';
		break;
	}
	param->data = pos;
	if (FUNC0(start))
		return FUNC1(start);
	return NULL;
}
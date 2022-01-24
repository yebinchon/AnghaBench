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
struct tomoyo_acl_param {char* data; } ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 

char *FUNC2(struct tomoyo_acl_param *param)
{
	char *pos = param->data;
	char *del = FUNC0(pos, ' ');

	if (del)
		*del++ = '\0';
	else
		del = pos + FUNC1(pos);
	param->data = del;
	return pos;
}
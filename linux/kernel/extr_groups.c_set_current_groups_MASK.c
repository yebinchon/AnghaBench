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
struct group_info {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct cred*) ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cred*,struct group_info*) ; 

int FUNC3(struct group_info *group_info)
{
	struct cred *new;

	new = FUNC1();
	if (!new)
		return -ENOMEM;

	FUNC2(new, group_info);
	return FUNC0(new);
}
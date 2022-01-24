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
struct cred {struct group_info* group_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct group_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct group_info*) ; 

void FUNC2(struct cred *new, struct group_info *group_info)
{
	FUNC1(new->group_info);
	FUNC0(group_info);
	new->group_info = group_info;
}
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
struct ima_template_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ima_template_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ima_extend_list_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ima_template_entry *entry)
{
	int result = 0;

	FUNC1(&ima_extend_list_mutex);
	result = FUNC0(entry, 0);
	FUNC2(&ima_extend_list_mutex);
	return result;
}
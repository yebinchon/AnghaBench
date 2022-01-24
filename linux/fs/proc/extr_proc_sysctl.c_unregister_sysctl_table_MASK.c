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
struct ctl_table_header {struct ctl_table_header* ctl_table_arg; } ;
struct ctl_table {struct ctl_table* ctl_table_arg; } ;

/* Variables and functions */
 int FUNC0 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct ctl_table_header * header)
{
	int nr_subheaders;
	FUNC3();

	if (header == NULL)
		return;

	nr_subheaders = FUNC0(header->ctl_table_arg);
	if (FUNC6(nr_subheaders > 1)) {
		struct ctl_table_header **subheaders;
		int i;

		subheaders = (struct ctl_table_header **)(header + 1);
		for (i = nr_subheaders -1; i >= 0; i--) {
			struct ctl_table_header *subh = subheaders[i];
			struct ctl_table *table = subh->ctl_table_arg;
			FUNC7(subh);
			FUNC2(table);
		}
		FUNC2(header);
		return;
	}

	FUNC4(&sysctl_lock);
	FUNC1(header);
	FUNC5(&sysctl_lock);
}
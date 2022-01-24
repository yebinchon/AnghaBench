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
struct cmdnames {unsigned int cnt; unsigned int alloc; int /*<<< orphan*/ * names; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(struct cmdnames *cmds, struct cmdnames *old)
{
	unsigned int i, nr = cmds->cnt + old->cnt;
	void *tmp;

	if (nr > cmds->alloc) {
		/* Choose bigger one to alloc */
		if (FUNC0(cmds->alloc) < nr)
			cmds->alloc = nr;
		else
			cmds->alloc = FUNC0(cmds->alloc);
		tmp = FUNC1(cmds->names, cmds->alloc * sizeof(*cmds->names));
		if (!tmp)
			return -1;
		cmds->names = tmp;
	}
	for (i = 0; i < old->cnt; i++)
		cmds->names[cmds->cnt++] = old->names[i];
	FUNC2(&old->names);
	old->cnt = 0;
	return 0;
}
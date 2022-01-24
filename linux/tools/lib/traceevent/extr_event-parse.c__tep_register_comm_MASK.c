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
struct tep_handle {int /*<<< orphan*/  cmdline_count; struct cmdline_list* cmdlist; scalar_t__ cmdlines; } ;
struct cmdline_list {int pid; struct cmdline_list* next; void* comm; } ;

/* Variables and functions */
 int FUNC0 (struct tep_handle*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdline_list*) ; 
 struct cmdline_list* FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct tep_handle *tep,
			      const char *comm, int pid, bool override)
{
	struct cmdline_list *item;

	if (tep->cmdlines)
		return FUNC0(tep, comm, pid, override);

	item = FUNC2(sizeof(*item));
	if (!item)
		return -1;

	if (comm)
		item->comm = FUNC3(comm);
	else
		item->comm = FUNC3("<...>");
	if (!item->comm) {
		FUNC1(item);
		return -1;
	}
	item->pid = pid;
	item->next = tep->cmdlist;

	tep->cmdlist = item;
	tep->cmdline_count++;

	return 0;
}
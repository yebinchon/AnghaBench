#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  node_delete; int /*<<< orphan*/  node_new; int /*<<< orphan*/  node_cmp; } ;
struct intlist {TYPE_1__ rblist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intlist*) ; 
 int /*<<< orphan*/  intlist__node_cmp ; 
 int /*<<< orphan*/  intlist__node_delete ; 
 int /*<<< orphan*/  intlist__node_new ; 
 scalar_t__ FUNC1 (struct intlist*,char const*) ; 
 struct intlist* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

struct intlist *FUNC4(const char *slist)
{
	struct intlist *ilist = FUNC2(sizeof(*ilist));

	if (ilist != NULL) {
		FUNC3(&ilist->rblist);
		ilist->rblist.node_cmp    = intlist__node_cmp;
		ilist->rblist.node_new    = intlist__node_new;
		ilist->rblist.node_delete = intlist__node_delete;

		if (slist && FUNC1(ilist, slist))
			goto out_delete;
	}

	return ilist;
out_delete:
	FUNC0(ilist);
	return NULL;
}
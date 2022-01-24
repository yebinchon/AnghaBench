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
struct nfs_page {struct nfs_page* wb_this_page; int /*<<< orphan*/  wb_flags; struct nfs_page* wb_head; } ;

/* Variables and functions */
 unsigned int PG_HEADLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct nfs_page *req, unsigned int bit)
{
	struct nfs_page *head = req->wb_head;
	struct nfs_page *tmp;

	FUNC0(!FUNC3(PG_HEADLOCK, &head->wb_flags));
	FUNC0(FUNC2(bit, &req->wb_flags));

	tmp = req->wb_this_page;
	while (tmp != req) {
		if (!FUNC3(bit, &tmp->wb_flags))
			return false;
		tmp = tmp->wb_this_page;
	}

	/* true! reset all bits */
	tmp = req;
	do {
		FUNC1(bit, &tmp->wb_flags);
		tmp = tmp->wb_this_page;
	} while (tmp != req);

	return true;
}
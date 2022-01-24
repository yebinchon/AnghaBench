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
struct page {int dummy; } ;
struct dnode_of_data {scalar_t__ nid; scalar_t__ ofs_in_node; struct page* node_page; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dnode_of_data*) ; 
 int FUNC5 (struct dnode_of_data*) ; 

__attribute__((used)) static int FUNC6(struct dnode_of_data *dn)
{
	struct page *page;
	int err;

	if (dn->nid == 0)
		return 1;

	/* get direct node */
	page = FUNC3(FUNC0(dn->inode), dn->nid);
	if (FUNC1(page) && FUNC2(page) == -ENOENT)
		return 1;
	else if (FUNC1(page))
		return FUNC2(page);

	/* Make dnode_of_data for parameter */
	dn->node_page = page;
	dn->ofs_in_node = 0;
	FUNC4(dn);
	err = FUNC5(dn);
	if (err)
		return err;

	return 1;
}
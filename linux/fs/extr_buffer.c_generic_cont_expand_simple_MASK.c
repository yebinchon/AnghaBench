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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_CONT_EXPAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,void*) ; 

int FUNC4(struct inode *inode, loff_t size)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	void *fsdata;
	int err;

	err = FUNC1(inode, size);
	if (err)
		goto out;

	err = FUNC2(NULL, mapping, size, 0,
				    AOP_FLAG_CONT_EXPAND, &page, &fsdata);
	if (err)
		goto out;

	err = FUNC3(NULL, mapping, size, 0, 0, page, fsdata);
	FUNC0(err > 0);

out:
	return err;
}
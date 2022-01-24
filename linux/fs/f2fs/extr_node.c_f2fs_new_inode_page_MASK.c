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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dnode_of_data {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct page *FUNC2(struct inode *inode)
{
	struct dnode_of_data dn;

	/* allocate inode page for new inode */
	FUNC1(&dn, inode, NULL, NULL, inode->i_ino);

	/* caller should f2fs_put_page(page, 1); */
	return FUNC0(&dn, 0);
}
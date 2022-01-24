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
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (struct page*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 char* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct delayed_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC7(struct dentry *dentry,
					   struct inode *inode,
					   struct delayed_call *done)
{
	struct page *page;
	const char *target;

	if (!dentry)
		return FUNC1(-ECHILD);

	page = FUNC6(inode->i_mapping, 0, NULL);
	if (FUNC2(page))
		return FUNC0(page);

	target = FUNC3(inode, FUNC4(page),
				     inode->i_sb->s_blocksize, done);
	FUNC5(page);
	return target;
}
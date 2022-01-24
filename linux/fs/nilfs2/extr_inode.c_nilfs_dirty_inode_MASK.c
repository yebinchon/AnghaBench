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
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_mdt_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 struct nilfs_mdt_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct inode *inode, int flags)
{
	struct nilfs_transaction_info ti;
	struct nilfs_mdt_info *mdi = FUNC0(inode);

	if (FUNC3(inode)) {
		FUNC5(inode->i_sb, KERN_WARNING,
			  "tried to mark bad_inode dirty. ignored.");
		FUNC2();
		return;
	}
	if (mdi) {
		FUNC4(inode);
		return;
	}
	FUNC6(inode->i_sb, &ti, 0);
	FUNC1(inode, flags);
	FUNC7(inode->i_sb); /* never fails */
}
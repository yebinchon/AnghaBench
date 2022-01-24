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
struct jbd2_inode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_sb; } ;
struct ext4_inode_info {struct jbd2_inode* jinode; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct jbd2_inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jbd2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct jbd2_inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	struct jbd2_inode *jinode;

	if (ei->jinode || !FUNC1(inode->i_sb)->s_journal)
		return 0;

	jinode = FUNC2(GFP_KERNEL);
	FUNC5(&inode->i_lock);
	if (!ei->jinode) {
		if (!jinode) {
			FUNC6(&inode->i_lock);
			return -ENOMEM;
		}
		ei->jinode = jinode;
		FUNC4(ei->jinode, inode);
		jinode = NULL;
	}
	FUNC6(&inode->i_lock);
	if (FUNC7(jinode != NULL))
		FUNC3(jinode);
	return 0;
}
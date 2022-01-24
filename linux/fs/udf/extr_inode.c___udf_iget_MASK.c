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
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_location; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kernel_lb_addr*,int) ; 
 unsigned long FUNC5 (struct super_block*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

struct inode *FUNC8(struct super_block *sb, struct kernel_lb_addr *ino,
			 bool hidden_inode)
{
	unsigned long block = FUNC5(sb, ino, 0);
	struct inode *inode = FUNC3(sb, block);
	int err;

	if (!inode)
		return FUNC0(-ENOMEM);

	if (!(inode->i_state & I_NEW))
		return inode;

	FUNC4(&FUNC1(inode)->i_location, ino, sizeof(struct kernel_lb_addr));
	err = FUNC6(inode, hidden_inode);
	if (err < 0) {
		FUNC2(inode);
		return FUNC0(err);
	}
	FUNC7(inode);

	return inode;
}
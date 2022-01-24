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
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; } ;
struct f2fs_inode {scalar_t__* i_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct inode *inode, struct f2fs_inode *ri)
{
	int extra_size = FUNC4(inode);

	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode) ||
			FUNC2(inode->i_mode) || FUNC3(inode->i_mode)) {
		if (ri->i_addr[extra_size])
			inode->i_rdev = FUNC7(
				FUNC5(ri->i_addr[extra_size]));
		else
			inode->i_rdev = FUNC6(
				FUNC5(ri->i_addr[extra_size + 1]));
	}
}
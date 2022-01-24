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
struct f2fs_inode {void** i_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, struct f2fs_inode *ri)
{
	int extra_size = FUNC3(inode);

	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode)) {
		if (FUNC6(inode->i_rdev)) {
			ri->i_addr[extra_size] =
				FUNC2(FUNC5(inode->i_rdev));
			ri->i_addr[extra_size + 1] = 0;
		} else {
			ri->i_addr[extra_size] = 0;
			ri->i_addr[extra_size + 1] =
				FUNC2(FUNC4(inode->i_rdev));
			ri->i_addr[extra_size + 2] = 0;
		}
	}
}
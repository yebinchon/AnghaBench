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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/ * bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct ext4_iloc*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(handle_t *handle, struct inode *inode,
			 struct ext4_iloc *iloc)
{
	int err;

	if (FUNC7(FUNC3(FUNC1(inode->i_sb))))
		return -EIO;

	err = FUNC4(inode, iloc);
	if (!err) {
		FUNC0(iloc->bh, "get_write_access");
		err = FUNC5(handle, iloc->bh);
		if (err) {
			FUNC2(iloc->bh);
			iloc->bh = NULL;
		}
	}
	FUNC6(inode->i_sb, err);
	return err;
}
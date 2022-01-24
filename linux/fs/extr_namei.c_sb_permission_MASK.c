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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EROFS ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct inode *inode, int mask)
{
	if (FUNC4(mask & MAY_WRITE)) {
		umode_t mode = inode->i_mode;

		/* Nobody gets write access to a read-only fs. */
		if (FUNC3(sb) && (FUNC2(mode) || FUNC0(mode) || FUNC1(mode)))
			return -EROFS;
	}
	return 0;
}
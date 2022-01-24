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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FI_AUTO_RECOVER ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct inode *inode,
					block_t diff, bool add, bool claim)
{
	bool clean = !FUNC4(inode, FI_DIRTY_INODE);
	bool recover = FUNC4(inode, FI_AUTO_RECOVER);

	/* add = 1, claim = 1 should be dquot_reserve_block in pair */
	if (add) {
		if (claim)
			FUNC1(inode, diff);
		else
			FUNC0(inode, diff);
	} else {
		FUNC2(inode, diff);
	}

	FUNC3(inode, true);
	if (clean || recover)
		FUNC5(inode, FI_AUTO_RECOVER);
}
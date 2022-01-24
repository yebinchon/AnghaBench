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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FI_AUTO_RECOVER ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct inode *inode, loff_t i_size)
{
	bool clean = !FUNC3(inode, FI_DIRTY_INODE);
	bool recover = FUNC3(inode, FI_AUTO_RECOVER);

	if (FUNC1(inode) == i_size)
		return;

	FUNC2(inode, i_size);
	FUNC0(inode, true);
	if (clean || recover)
		FUNC4(inode, FI_AUTO_RECOVER);
}
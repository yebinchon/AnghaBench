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
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_blocks; int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned int) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct inode *inode, unsigned frags)
{
	unsigned size = frags * FUNC2(inode);
	FUNC3(&inode->i_lock);
	FUNC0(inode, size);
	if (FUNC5((u32)inode->i_blocks != inode->i_blocks)) {
		FUNC1(inode, size);
		FUNC4(&inode->i_lock);
		return false;
	}
	FUNC4(&inode->i_lock);
	return true;
}
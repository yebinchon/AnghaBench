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
struct orangefs_inode_s {unsigned long bitlock; scalar_t__ mapping_time; } ;
struct inode {int /*<<< orphan*/  i_lock; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 struct orangefs_inode_s* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int FUNC2 (struct address_space*) ; 
 int FUNC3 (struct address_space*) ; 
 scalar_t__ jiffies ; 
 int orangefs_cache_timeout_msecs ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*,int) ; 

int FUNC14(struct inode *inode)
{
	struct orangefs_inode_s *orangefs_inode = FUNC0(inode);
	struct address_space *mapping = inode->i_mapping;
	unsigned long *bitlock = &orangefs_inode->bitlock;
	int ret;

	while (1) {
		ret = FUNC12(bitlock, 1, TASK_KILLABLE);
		if (ret)
			return ret;
		FUNC7(&inode->i_lock);
		if (FUNC9(1, bitlock)) {
			FUNC8(&inode->i_lock);
			continue;
		}
		if (!FUNC10(jiffies, orangefs_inode->mapping_time))
			break;
		FUNC8(&inode->i_lock);
		return 0;
	}

	FUNC4(1, bitlock);
	FUNC6();
	FUNC8(&inode->i_lock);

	FUNC11(mapping, 0, 0, 0);
	ret = FUNC2(mapping);
	if (!ret)
		ret = FUNC3(mapping);

	orangefs_inode->mapping_time = jiffies +
	    orangefs_cache_timeout_msecs*HZ/1000;

	FUNC1(1, bitlock);
	FUNC5();
	FUNC13(bitlock, 1);

	return ret;
}
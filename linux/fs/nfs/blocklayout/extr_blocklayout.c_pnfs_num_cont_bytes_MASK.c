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
typedef  scalar_t__ u64 ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct address_space*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static u64 FUNC5(struct inode *inode, pgoff_t idx)
{
	struct address_space *mapping = inode->i_mapping;
	pgoff_t end;

	/* Optimize common case that writes from 0 to end of file */
	end = FUNC0(FUNC1(inode), PAGE_SIZE);
	if (end != inode->i_mapping->nrpages) {
		FUNC3();
		end = FUNC2(mapping, idx + 1, ULONG_MAX);
		FUNC4();
	}

	if (!end)
		return FUNC1(inode) - (idx << PAGE_SHIFT);
	else
		return (end - idx) << PAGE_SHIFT;
}
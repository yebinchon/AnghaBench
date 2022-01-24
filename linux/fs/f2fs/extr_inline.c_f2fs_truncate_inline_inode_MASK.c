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
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC3 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

void FUNC6(struct inode *inode,
					struct page *ipage, u64 from)
{
	void *addr;

	if (from >= FUNC0(inode))
		return;

	addr = FUNC3(inode, ipage);

	FUNC2(ipage, NODE, true, true);
	FUNC4(addr + from, 0, FUNC0(inode) - from);
	FUNC5(ipage);

	if (from == 0)
		FUNC1(inode, FI_DATA_EXIST);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_disksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_MISC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

int FUNC10(struct inode *inode, loff_t offset,
				      loff_t len)
{
	handle_t *handle;
	loff_t size = FUNC8(inode);

	FUNC3(!FUNC9(inode));
	if (offset > size || offset + len < size)
		return 0;

	if (FUNC0(inode)->i_disksize >= size)
		return 0;

	handle = FUNC4(inode, EXT4_HT_MISC, 1);
	if (FUNC1(handle))
		return FUNC2(handle);
	FUNC7(inode, size);
	FUNC6(handle, inode);
	FUNC5(handle);

	return 0;
}
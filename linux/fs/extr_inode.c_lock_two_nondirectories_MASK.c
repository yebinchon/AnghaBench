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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_NONDIR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 

void FUNC4(struct inode *inode1, struct inode *inode2)
{
	if (inode1 > inode2)
		FUNC3(inode1, inode2);

	if (inode1 && !FUNC0(inode1->i_mode))
		FUNC1(inode1);
	if (inode2 && !FUNC0(inode2->i_mode) && inode2 != inode1)
		FUNC2(inode2, I_MUTEX_NONDIR2);
}
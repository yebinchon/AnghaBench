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

/* Variables and functions */
 int /*<<< orphan*/  FI_NEW_INODE ; 
 scalar_t__ FUNC0 (struct inode*,int) ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

void FUNC3(struct inode *inode, bool sync)
{
	if (FUNC1(inode, FI_NEW_INODE))
		return;

	if (FUNC0(inode, sync))
		return;

	FUNC2(inode);
}
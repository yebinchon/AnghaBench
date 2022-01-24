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
 int /*<<< orphan*/  OVL_UPPERDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct inode *inode)
{
	/*
	 * Pairs with smp_rmb() in ovl_has_upperdata(). Make sure
	 * if OVL_UPPERDATA flag is visible, then effects of write operations
	 * before it are visible as well.
	 */
	FUNC1();
	FUNC0(OVL_UPPERDATA, inode);
}
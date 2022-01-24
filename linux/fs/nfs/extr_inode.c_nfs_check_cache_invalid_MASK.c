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
struct TYPE_2__ {scalar_t__ (* have_delegation ) (struct inode*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,unsigned long) ; 
 int FUNC2 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct inode *inode, unsigned long flags)
{
	if (FUNC0(inode)->have_delegation(inode, FMODE_READ))
		return FUNC1(inode, flags);

	return FUNC2(inode, flags);
}
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
struct inode {int i_state; int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int I_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __I_NEW ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 

void FUNC7(struct inode *inode)
{
	FUNC2(inode);
	FUNC4(&inode->i_lock);
	FUNC0(!(inode->i_state & I_NEW));
	inode->i_state &= ~I_NEW;
	FUNC3();
	FUNC6(&inode->i_state, __I_NEW);
	FUNC5(&inode->i_lock);
	FUNC1(inode);
}
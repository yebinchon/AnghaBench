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
struct ovl_inode {int /*<<< orphan*/  lowerdata; int /*<<< orphan*/  lower; int /*<<< orphan*/  __upperdentry; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 struct ovl_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct ovl_inode *oi = FUNC0(inode);

	FUNC2(oi->__upperdentry);
	FUNC3(oi->lower);
	if (FUNC1(inode->i_mode))
		FUNC4(inode);
	else
		FUNC3(oi->lowerdata);
}
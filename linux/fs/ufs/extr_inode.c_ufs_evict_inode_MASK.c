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
struct inode {int /*<<< orphan*/  i_mode; scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC11(struct inode * inode)
{
	int want_delete = 0;

	if (!inode->i_nlink && !FUNC6(inode))
		want_delete = 1;

	FUNC7(&inode->i_data);
	if (want_delete) {
		inode->i_size = 0;
		if (inode->i_blocks &&
		    (FUNC2(inode->i_mode) || FUNC0(inode->i_mode) ||
		     FUNC1(inode->i_mode)))
			FUNC9(inode);
		FUNC10(inode, FUNC4(inode));
	}

	FUNC5(inode);
	FUNC3(inode);

	if (want_delete)
		FUNC8(inode);
}
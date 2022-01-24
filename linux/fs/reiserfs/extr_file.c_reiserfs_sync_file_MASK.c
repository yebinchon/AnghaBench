#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *filp, loff_t start, loff_t end,
			      int datasync)
{
	struct inode *inode = filp->f_mapping->host;
	int err;
	int barrier_done;

	err = FUNC3(filp, start, end);
	if (err)
		return err;

	FUNC4(inode);
	FUNC0(!FUNC1(inode->i_mode));
	err = FUNC10(inode->i_mapping);
	FUNC8(inode->i_sb);
	barrier_done = FUNC7(inode);
	FUNC9(inode->i_sb);
	if (barrier_done != 1 && FUNC6(inode->i_sb))
		FUNC2(inode->i_sb->s_bdev, GFP_KERNEL, NULL);
	FUNC5(inode);
	if (barrier_done < 0)
		return barrier_done;
	return (err < 0) ? -EIO : 0;
}
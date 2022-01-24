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
struct file {int /*<<< orphan*/  f_mode; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode * inode, struct file * filp)
{
	struct block_device *bdev = FUNC0(FUNC1(filp));
	FUNC2(bdev, filp->f_mode);
	return 0;
}
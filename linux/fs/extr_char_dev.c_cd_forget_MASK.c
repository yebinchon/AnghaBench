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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/ * i_mapping; int /*<<< orphan*/ * i_cdev; int /*<<< orphan*/  i_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdev_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	FUNC1(&cdev_lock);
	FUNC0(&inode->i_devices);
	inode->i_cdev = NULL;
	inode->i_mapping = &inode->i_data;
	FUNC2(&cdev_lock);
}
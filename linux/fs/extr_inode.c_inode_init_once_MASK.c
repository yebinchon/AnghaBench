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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_lru; int /*<<< orphan*/  i_wb_list; int /*<<< orphan*/  i_io_list; int /*<<< orphan*/  i_devices; int /*<<< orphan*/  i_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct inode *inode)
{
	FUNC4(inode, 0, sizeof(*inode));
	FUNC0(&inode->i_hash);
	FUNC1(&inode->i_devices);
	FUNC1(&inode->i_io_list);
	FUNC1(&inode->i_wb_list);
	FUNC1(&inode->i_lru);
	FUNC2(&inode->i_data);
	FUNC3(inode);
}
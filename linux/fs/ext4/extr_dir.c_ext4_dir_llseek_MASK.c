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
struct file {scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	int dx_dir = FUNC4(inode);
	loff_t ret, htree_max = FUNC0(file);

	if (FUNC5(dx_dir))
		ret = FUNC2(file, offset, whence,
						    htree_max, htree_max);
	else
		ret = FUNC1(file, offset, whence);
	file->f_version = FUNC3(inode) - 1;
	return ret;
}
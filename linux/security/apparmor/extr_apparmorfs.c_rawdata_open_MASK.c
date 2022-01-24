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
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	if (!FUNC1(NULL))
		return -EACCES;
	file->private_data = FUNC0(inode->i_private);
	if (!file->private_data)
		/* lost race: this entry is being reaped */
		return -ENOENT;

	return 0;
}
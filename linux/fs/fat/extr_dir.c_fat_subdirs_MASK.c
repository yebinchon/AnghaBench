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
struct msdos_dir_entry {int attr; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int ATTR_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ; 

int FUNC2(struct inode *dir)
{
	struct buffer_head *bh;
	struct msdos_dir_entry *de;
	loff_t cpos;
	int count = 0;

	bh = NULL;
	cpos = 0;
	while (FUNC1(dir, &cpos, &bh, &de) >= 0) {
		if (de->attr & ATTR_DIR)
			count++;
	}
	FUNC0(bh);
	return count;
}
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
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct address_space*) ; 

int FUNC4(struct file *file, loff_t lstart, loff_t lend)
{
	int err = 0, err2;
	struct address_space *mapping = file->f_mapping;

	if (FUNC3(mapping)) {
		err = FUNC1(mapping, lstart, lend,
						 WB_SYNC_ALL);
		/* See comment of filemap_write_and_wait() */
		if (err != -EIO)
			FUNC0(mapping, lstart, lend);
	}
	err2 = FUNC2(file);
	if (!err)
		err = err2;
	return err;
}
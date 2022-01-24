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
struct seq_file {struct cache_detail* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct cache_detail {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  cache_content_op ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file,
			struct cache_detail *cd)
{
	struct seq_file *seq;
	int err;

	if (!cd || !FUNC2(cd->owner))
		return -EACCES;

	err = FUNC1(file, &cache_content_op);
	if (err) {
		FUNC0(cd->owner);
		return err;
	}

	seq = file->private_data;
	seq->private = cd;
	return 0;
}
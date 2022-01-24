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
struct seq_file {int /*<<< orphan*/  buf; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seq_file_cache ; 

int FUNC2(struct inode *inode, struct file *file)
{
	struct seq_file *m = file->private_data;
	FUNC1(m->buf);
	FUNC0(seq_file_cache, m);
	return 0;
}
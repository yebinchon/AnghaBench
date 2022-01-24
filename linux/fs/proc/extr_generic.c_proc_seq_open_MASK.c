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
struct proc_dir_entry {int /*<<< orphan*/  seq_ops; scalar_t__ state_size; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct proc_dir_entry *de = FUNC0(inode);

	if (de->state_size)
		return FUNC2(file, de->seq_ops, de->state_size);
	return FUNC1(file, de->seq_ops);
}
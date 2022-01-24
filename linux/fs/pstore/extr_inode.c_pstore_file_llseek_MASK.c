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
struct seq_file {scalar_t__ op; } ;
struct file {struct seq_file* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static loff_t FUNC2(struct file *file, loff_t off, int whence)
{
	struct seq_file *sf = file->private_data;

	if (sf->op)
		return FUNC1(file, off, whence);
	return FUNC0(file, off, whence);
}
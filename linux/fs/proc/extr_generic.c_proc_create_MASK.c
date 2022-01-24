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
typedef  int /*<<< orphan*/  umode_t ;
struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (char const*,int /*<<< orphan*/ ,struct proc_dir_entry*,struct file_operations const*,int /*<<< orphan*/ *) ; 

struct proc_dir_entry *FUNC1(const char *name, umode_t mode,
				   struct proc_dir_entry *parent,
				   const struct file_operations *proc_fops)
{
	return FUNC0(name, mode, parent, proc_fops, NULL);
}
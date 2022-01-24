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
struct proc_dir_entry {struct file_operations const* proc_fops; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_dir_entry* FUNC1 (char const*,int /*<<< orphan*/ ,struct proc_dir_entry**,void*) ; 
 struct proc_dir_entry* FUNC2 (struct proc_dir_entry*,struct proc_dir_entry*) ; 

struct proc_dir_entry *FUNC3(const char *name, umode_t mode,
		struct proc_dir_entry *parent,
		const struct file_operations *proc_fops, void *data)
{
	struct proc_dir_entry *p;

	FUNC0(proc_fops == NULL);

	p = FUNC1(name, mode, &parent, data);
	if (!p)
		return NULL;
	p->proc_fops = proc_fops;
	return FUNC2(parent, p);
}
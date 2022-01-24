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
typedef  int umode_t ;
struct proc_dir_entry {void* data; int /*<<< orphan*/ * proc_iops; } ;

/* Variables and functions */
 int S_IALLUGO ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct proc_dir_entry* FUNC2 (struct proc_dir_entry**,char const*,int,int) ; 
 int /*<<< orphan*/  proc_file_inode_operations ; 

struct proc_dir_entry *FUNC3(const char *name, umode_t mode,
		struct proc_dir_entry **parent, void *data)
{
	struct proc_dir_entry *p;

	if ((mode & S_IFMT) == 0)
		mode |= S_IFREG;
	if ((mode & S_IALLUGO) == 0)
		mode |= S_IRUGO;
	if (FUNC1(!FUNC0(mode)))
		return NULL;

	p = FUNC2(parent, name, mode, 1);
	if (p) {
		p->proc_iops = &proc_file_inode_operations;
		p->data = data;
	}
	return p;
}
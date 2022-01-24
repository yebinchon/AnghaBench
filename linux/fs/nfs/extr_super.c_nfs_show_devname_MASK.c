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
struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 char* FUNC4 (char**,struct dentry*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*) ; 

int FUNC6(struct seq_file *m, struct dentry *root)
{
	char *page = (char *) FUNC2(GFP_KERNEL);
	char *devname, *dummy;
	int err = 0;
	if (!page)
		return -ENOMEM;
	devname = FUNC4(&dummy, root, page, PAGE_SIZE, 0);
	if (FUNC0(devname))
		err = FUNC1(devname);
	else
		FUNC5(m, devname, " \t\n\\");
	FUNC3((unsigned long)page);
	return err;
}
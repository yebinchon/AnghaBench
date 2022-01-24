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
struct trace_subsystem_dir {struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_subsystem_dir* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct trace_subsystem_dir*) ; 
 struct trace_subsystem_dir* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct trace_subsystem_dir *dir;
	struct trace_array *tr = inode->i_private;
	int ret;

	/* Make a temporary dir that has no system but points to tr */
	dir = FUNC1(sizeof(*dir), GFP_KERNEL);
	if (!dir)
		return -ENOMEM;

	ret = FUNC2(inode, filp);
	if (ret < 0) {
		FUNC0(dir);
		return ret;
	}
	dir->tr = tr;
	filp->private_data = dir;

	return 0;
}
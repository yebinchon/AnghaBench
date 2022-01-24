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
struct seq_file {scalar_t__ private; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {scalar_t__ private_data; } ;
struct aa_loaddata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 struct aa_loaddata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_loaddata*) ; 
 int FUNC3 (struct file*,int (*) (struct seq_file*,void*),struct aa_loaddata*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file,
			    int (*show)(struct seq_file *, void *))
{
	struct aa_loaddata *data = FUNC1(inode->i_private);
	int error;

	if (!data)
		/* lost race this ent is being reaped */
		return -ENOENT;

	error = FUNC3(file, show, data);
	if (error) {
		FUNC0(file->private_data &&
		       ((struct seq_file *)file->private_data)->private);
		FUNC2(data);
	}

	return error;
}
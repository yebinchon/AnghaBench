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
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct aa_proxy {int dummy; } ;

/* Variables and functions */
 struct aa_proxy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_proxy*) ; 
 int FUNC2 (struct file*,int (*) (struct seq_file*,void*),struct aa_proxy*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file,
			    int (*show)(struct seq_file *, void *))
{
	struct aa_proxy *proxy = FUNC0(inode->i_private);
	int error = FUNC2(file, show, proxy);

	if (error) {
		file->private_data = NULL;
		FUNC1(proxy);
	}

	return error;
}
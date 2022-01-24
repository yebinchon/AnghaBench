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
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct path f_path; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct file* FUNC2 (int,struct cred const*) ; 
 int FUNC3 (struct file*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 

struct file *FUNC5(const struct path *path, int flags,
				struct inode *inode, const struct cred *cred)
{
	struct file *f = FUNC2(flags, cred);
	if (!FUNC1(f)) {
		int error;

		f->f_path = *path;
		error = FUNC3(f, inode, NULL);
		if (error) {
			FUNC4(f);
			f = FUNC0(error);
		}
	}
	return f;
}
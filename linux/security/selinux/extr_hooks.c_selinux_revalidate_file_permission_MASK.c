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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int MAY_APPEND ; 
 int MAY_WRITE ; 
 int O_APPEND ; 
 struct cred* FUNC0 () ; 
 int FUNC1 (struct cred const*,struct file*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, int mask)
{
	const struct cred *cred = FUNC0();
	struct inode *inode = FUNC2(file);

	/* file_mask_to_av won't add FILE__WRITE if MAY_APPEND is set */
	if ((file->f_flags & O_APPEND) && (mask & MAY_WRITE))
		mask |= MAY_APPEND;

	return FUNC1(cred, file,
			     FUNC3(inode->i_mode, mask));
}
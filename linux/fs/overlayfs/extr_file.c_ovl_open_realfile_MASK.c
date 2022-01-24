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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int f_flags; int /*<<< orphan*/  f_path; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int FMODE_NONOTIFY ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_NOATIME ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode* FUNC2 (struct file const*) ; 
 struct file* FUNC3 (int /*<<< orphan*/ *,int,struct inode*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct file const*,struct file const*,int /*<<< orphan*/ ,int,struct file*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 

__attribute__((used)) static struct file *FUNC8(const struct file *file,
				      struct inode *realinode)
{
	struct inode *inode = FUNC2(file);
	struct file *realfile;
	const struct cred *old_cred;
	int flags = file->f_flags | O_NOATIME | FMODE_NONOTIFY;

	old_cred = FUNC4(inode->i_sb);
	realfile = FUNC3(&file->f_path, flags, realinode,
				       FUNC1());
	FUNC7(old_cred);

	FUNC6("open(%p[%pD2/%c], 0%o) -> (%p, 0%o)\n",
		 file, file, FUNC5(inode, realinode), file->f_flags,
		 realfile, FUNC0(realfile) ? 0 : realfile->f_flags);

	return realfile;
}
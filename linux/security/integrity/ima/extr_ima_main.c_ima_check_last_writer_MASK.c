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
struct integrity_iint_cache {int flags; int /*<<< orphan*/  mutex; scalar_t__ measured_pcrs; int /*<<< orphan*/  version; int /*<<< orphan*/  atomic_flags; } ;
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct file {int f_mode; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int IMA_DONE_MASK ; 
 int IMA_NEW_FILE ; 
 int /*<<< orphan*/  IMA_UPDATE_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct integrity_iint_cache*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct integrity_iint_cache *iint,
				  struct inode *inode, struct file *file)
{
	fmode_t mode = file->f_mode;
	bool update;

	if (!(mode & FMODE_WRITE))
		return;

	FUNC4(&iint->mutex);
	if (FUNC1(&inode->i_writecount) == 1) {
		update = FUNC6(IMA_UPDATE_XATTR,
					    &iint->atomic_flags);
		if (!FUNC0(inode) ||
		    !FUNC3(inode, iint->version) ||
		    (iint->flags & IMA_NEW_FILE)) {
			iint->flags &= ~(IMA_DONE_MASK | IMA_NEW_FILE);
			iint->measured_pcrs = 0;
			if (update)
				FUNC2(iint, file);
		}
	}
	FUNC5(&iint->mutex);
}
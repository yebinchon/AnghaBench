#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {scalar_t__ f_pos; } ;
struct fd {TYPE_1__* file; } ;
struct cred {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ f_pos; } ;

/* Variables and functions */
 int SEEK_CUR ; 
 int SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC9(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = FUNC1(file);
	struct fd real;
	const struct cred *old_cred;
	ssize_t ret;

	/*
	 * The two special cases below do not need to involve real fs,
	 * so we can optimizing concurrent callers.
	 */
	if (offset == 0) {
		if (whence == SEEK_CUR)
			return file->f_pos;

		if (whence == SEEK_SET)
			return FUNC8(file, 0, 0);
	}

	ret = FUNC5(file, &real);
	if (ret)
		return ret;

	/*
	 * Overlay file f_pos is the master copy that is preserved
	 * through copy up and modified on read/write, but only real
	 * fs knows how to SEEK_HOLE/SEEK_DATA and real fs may impose
	 * limitations that are more strict than ->s_maxbytes for specific
	 * files, so we use the real file to perform seeks.
	 */
	FUNC2(inode);
	real.file->f_pos = file->f_pos;

	old_cred = FUNC4(inode->i_sb);
	ret = FUNC7(real.file, offset, whence);
	FUNC6(old_cred);

	file->f_pos = real.file->f_pos;
	FUNC3(inode);

	FUNC0(real);

	return ret;
}
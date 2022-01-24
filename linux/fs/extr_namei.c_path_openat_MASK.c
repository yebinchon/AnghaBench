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
struct open_flags {int /*<<< orphan*/  open_flag; } ;
struct nameidata {int flags; } ;
struct file {int f_flags; int f_mode; } ;

/* Variables and functions */
 int ECHILD ; 
 int EINVAL ; 
 int EOPENSTALE ; 
 struct file* FUNC0 (int) ; 
 int ESTALE ; 
 int FMODE_OPENED ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int LOOKUP_CREATE ; 
 int LOOKUP_EXCL ; 
 int LOOKUP_OPEN ; 
 unsigned int LOOKUP_RCU ; 
 int O_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int __O_TMPFILE ; 
 struct file* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct nameidata*,struct file*,struct open_flags const*) ; 
 int FUNC6 (struct nameidata*,unsigned int,struct file*) ; 
 int FUNC7 (struct nameidata*,unsigned int,struct open_flags const*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (char const*,struct nameidata*) ; 
 char* FUNC11 (struct nameidata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct nameidata*) ; 
 char* FUNC13 (struct nameidata*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct file *FUNC15(struct nameidata *nd,
			const struct open_flags *op, unsigned flags)
{
	struct file *file;
	int error;

	file = FUNC3(op->open_flag, FUNC4());
	if (FUNC1(file))
		return file;

	if (FUNC14(file->f_flags & __O_TMPFILE)) {
		error = FUNC7(nd, flags, op, file);
	} else if (FUNC14(file->f_flags & O_PATH)) {
		error = FUNC6(nd, flags, file);
	} else {
		const char *s = FUNC11(nd, flags);
		while (!(error = FUNC10(s, nd)) &&
			(error = FUNC5(nd, file, op)) > 0) {
			nd->flags &= ~(LOOKUP_OPEN|LOOKUP_CREATE|LOOKUP_EXCL);
			s = FUNC13(nd);
		}
		FUNC12(nd);
	}
	if (FUNC9(!error)) {
		if (FUNC9(file->f_mode & FMODE_OPENED))
			return file;
		FUNC2(1);
		error = -EINVAL;
	}
	FUNC8(file);
	if (error == -EOPENSTALE) {
		if (flags & LOOKUP_RCU)
			error = -ECHILD;
		else
			error = -ESTALE;
	}
	return FUNC0(error);
}
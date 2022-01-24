#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path_cond {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_2__ f_path; int /*<<< orphan*/  f_cred; } ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int allow; } ;
struct TYPE_3__ {scalar_t__ in_execve; } ;

/* Variables and functions */
 int AA_EXEC_MMAP ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int /*<<< orphan*/  OP_OPEN ; 
 struct aa_label* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct aa_label*,TYPE_2__*,int /*<<< orphan*/ ,int,struct path_cond*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 TYPE_1__* current ; 
 struct aa_file_ctx* FUNC4 (struct file*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_label*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct aa_file_ctx *fctx = FUNC4(file);
	struct aa_label *label;
	int error = 0;

	if (!FUNC6(file->f_path.dentry))
		return 0;

	/* If in exec, permission is handled by bprm hooks.
	 * Cache permissions granted by the previous exec check, with
	 * implicit read and executable mmap which are required to
	 * actually execute the image.
	 */
	if (current->in_execve) {
		fctx->allow = MAY_EXEC | MAY_READ | AA_EXEC_MMAP;
		return 0;
	}

	label = FUNC0(file->f_cred);
	if (!FUNC7(label)) {
		struct inode *inode = FUNC5(file);
		struct path_cond cond = { inode->i_uid, inode->i_mode };

		error = FUNC2(OP_OPEN, label, &file->f_path, 0,
				     FUNC1(file), &cond);
		/* todo cache full allowed permissions set and state */
		fctx->allow = FUNC1(file);
	}
	FUNC3(label);

	return error;
}
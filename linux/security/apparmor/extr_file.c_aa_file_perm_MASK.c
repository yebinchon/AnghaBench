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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dentry; scalar_t__ mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int allow; int /*<<< orphan*/  label; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,struct aa_label*,struct aa_label*,struct file*,int,int) ; 
 int FUNC3 (char const*,struct aa_label*,struct aa_label*,struct file*,int,int) ; 
 scalar_t__ FUNC4 (struct aa_label*,struct aa_label*) ; 
 struct aa_file_ctx* FUNC5 (struct file*) ; 
 TYPE_2__* FUNC6 (struct file*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (struct aa_label*) ; 

int FUNC12(const char *op, struct aa_label *label, struct file *file,
		 u32 request)
{
	struct aa_file_ctx *fctx;
	struct aa_label *flabel;
	u32 denied;
	int error = 0;

	FUNC0(!label);
	FUNC0(!file);

	fctx = FUNC5(file);

	FUNC9();
	flabel  = FUNC8(fctx->label);
	FUNC0(!flabel);

	/* revalidate access, if task is unconfined, or the cached cred
	 * doesn't match or if the request is for more permissions than
	 * was granted.
	 *
	 * Note: the test for !unconfined(flabel) is to handle file
	 *       delegation from unconfined tasks
	 */
	denied = request & ~fctx->allow;
	if (FUNC11(label) || FUNC11(flabel) ||
	    (!denied && FUNC4(flabel, label)))
		goto done;

	/* TODO: label cross check */

	if (file->f_path.mnt && FUNC7(file->f_path.dentry))
		error = FUNC2(op, label, flabel, file, request,
					 denied);

	else if (FUNC1(FUNC6(file)->i_mode))
		error = FUNC3(op, label, flabel, file, request,
					 denied);
done:
	FUNC10();

	return error;
}
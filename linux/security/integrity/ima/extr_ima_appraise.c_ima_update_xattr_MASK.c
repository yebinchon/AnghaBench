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
struct integrity_iint_cache {scalar_t__ ima_file_status; int flags; int /*<<< orphan*/  atomic_flags; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMA_DIGSIG ; 
 int IMA_HASH ; 
 scalar_t__ INTEGRITY_PASS ; 
 struct dentry* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (struct integrity_iint_cache*,struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct integrity_iint_cache*) ; 
 int /*<<< orphan*/  ima_hash_algo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct integrity_iint_cache *iint, struct file *file)
{
	struct dentry *dentry = FUNC0(file);
	int rc = 0;

	/* do not collect and update hash for digital signatures */
	if (FUNC6(IMA_DIGSIG, &iint->atomic_flags))
		return;

	if ((iint->ima_file_status != INTEGRITY_PASS) &&
	    !(iint->flags & IMA_HASH))
		return;

	rc = FUNC2(iint, file, NULL, 0, ima_hash_algo, NULL);
	if (rc < 0)
		return;

	FUNC4(FUNC1(file));
	FUNC3(dentry, iint);
	FUNC5(FUNC1(file));
}
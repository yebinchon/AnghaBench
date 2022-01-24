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
struct TYPE_2__ {struct dentry* dentry; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int NFSEXP_NOSUBTREECHECK ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *expv, struct dentry *dentry)
{
	struct svc_export *exp = expv;
	int rv;
	struct dentry *tdentry;
	struct dentry *parent;

	if (exp->ex_flags & NFSEXP_NOSUBTREECHECK)
		return 1;

	tdentry = FUNC2(dentry);
	while (tdentry != exp->ex_path.dentry && !FUNC0(tdentry)) {
		/* make sure parents give x permission to user */
		int err;
		parent = FUNC3(tdentry);
		err = FUNC6(FUNC1(parent), MAY_EXEC);
		if (err < 0) {
			FUNC5(parent);
			break;
		}
		FUNC5(tdentry);
		tdentry = parent;
	}
	if (tdentry != exp->ex_path.dentry)
		FUNC4("nfsd_acceptable failed at %p %pd\n", tdentry, tdentry);
	rv = (tdentry == exp->ex_path.dentry);
	FUNC5(tdentry);
	return rv;
}
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
struct smack_known {int /*<<< orphan*/  smk_known; int /*<<< orphan*/  smk_rules; } ;
struct qstr {int dummy; } ;
struct inode_smack {int /*<<< orphan*/  smk_flags; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int MAY_TRANSMUTE ; 
 int /*<<< orphan*/  SMK_INODE_CHANGED ; 
 char* XATTR_SMACK_SUFFIX ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct inode_smack* FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 struct smack_known* FUNC6 () ; 
 struct smack_known* FUNC7 (struct inode*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct inode *dir,
				     const struct qstr *qstr, const char **name,
				     void **value, size_t *len)
{
	struct inode_smack *issp = FUNC3(inode);
	struct smack_known *skp = FUNC6();
	struct smack_known *isp = FUNC7(inode);
	struct smack_known *dsp = FUNC7(dir);
	int may;

	if (name)
		*name = XATTR_SMACK_SUFFIX;

	if (value && len) {
		FUNC1();
		may = FUNC4(skp->smk_known, dsp->smk_known,
				       &skp->smk_rules);
		FUNC2();

		/*
		 * If the access rule allows transmutation and
		 * the directory requests transmutation then
		 * by all means transmute.
		 * Mark the inode as changed.
		 */
		if (may > 0 && ((may & MAY_TRANSMUTE) != 0) &&
		    FUNC5(dir)) {
			isp = dsp;
			issp->smk_flags |= SMK_INODE_CHANGED;
		}

		*value = FUNC0(isp->smk_known, GFP_NOFS);
		if (*value == NULL)
			return -ENOMEM;

		*len = FUNC8(isp->smk_known);
	}

	return 0;
}
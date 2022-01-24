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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int DQUOT_LIMITS_ENABLED ; 
 int DQUOT_USAGE_ENABLED ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

int FUNC9(struct super_block *sb, char *qf_name,
		int format_id, int type)
{
	struct dentry *dentry;
	int error;

	dentry = FUNC5(qf_name, sb->s_root, FUNC7(qf_name));
	if (FUNC0(dentry))
		return FUNC1(dentry);

	if (FUNC3(dentry)) {
		error = -ENOENT;
		goto out;
	}

	error = FUNC6(dentry);
	if (!error)
		error = FUNC8(FUNC2(dentry), type, format_id,
				DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED);

out:
	FUNC4(dentry);
	return error;
}
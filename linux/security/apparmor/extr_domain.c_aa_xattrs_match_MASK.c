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
struct linux_binprm {TYPE_2__* file; } ;
struct dentry {int dummy; } ;
struct aa_profile {int xattr_count; int /*<<< orphan*/  xmatch; int /*<<< orphan*/ * xattrs; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAY_EXEC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,char*,scalar_t__) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct dentry*,int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct linux_binprm *bprm,
			   struct aa_profile *profile, unsigned int state)
{
	int i;
	ssize_t size;
	struct dentry *d;
	char *value = NULL;
	int value_size = 0, ret = profile->xattr_count;

	if (!bprm || !profile->xattr_count)
		return 0;

	/* transition from exec match to xattr set */
	state = FUNC1(profile->xmatch, state);

	d = bprm->file->f_path.dentry;

	for (i = 0; i < profile->xattr_count; i++) {
		size = FUNC4(d, profile->xattrs[i], &value,
					  value_size, GFP_KERNEL);
		if (size >= 0) {
			u32 perm;

			/* Check the xattr value, not just presence */
			state = FUNC0(profile->xmatch, state, value,
						 size);
			perm = FUNC2(profile->xmatch, state);
			if (!(perm & MAY_EXEC)) {
				ret = -EINVAL;
				goto out;
			}
		}
		/* transition to next element */
		state = FUNC1(profile->xmatch, state);
		if (size < 0) {
			/*
			 * No xattr match, so verify if transition to
			 * next element was valid. IFF so the xattr
			 * was optional.
			 */
			if (!state) {
				ret = -EINVAL;
				goto out;
			}
			/* don't count missing optional xattr as matched */
			ret--;
		}
	}

out:
	FUNC3(value);
	return ret;
}
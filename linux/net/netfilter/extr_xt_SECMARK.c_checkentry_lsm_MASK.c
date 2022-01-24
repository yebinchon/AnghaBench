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
struct xt_secmark_target_info {char* secctx; scalar_t__ secid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int SECMARK_SECCTX_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct xt_secmark_target_info *info)
{
	int err;

	info->secctx[SECMARK_SECCTX_MAX - 1] = '\0';
	info->secid = 0;

	err = FUNC1(info->secctx, FUNC4(info->secctx),
				       &info->secid);
	if (err) {
		if (err == -EINVAL)
			FUNC0("invalid security context \'%s\'\n",
					    info->secctx);
		return err;
	}

	if (!info->secid) {
		FUNC0("unable to map security context \'%s\'\n",
				    info->secctx);
		return -ENOENT;
	}

	err = FUNC3(info->secid);
	if (err) {
		FUNC0("unable to obtain relabeling permission\n");
		return err;
	}

	FUNC2();
	return 0;
}
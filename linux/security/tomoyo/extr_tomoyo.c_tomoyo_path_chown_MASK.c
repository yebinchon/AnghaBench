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
struct path {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  TOMOYO_TYPE_CHGRP ; 
 int /*<<< orphan*/  TOMOYO_TYPE_CHOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int FUNC3 (int /*<<< orphan*/ ,struct path const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct path *path, kuid_t uid, kgid_t gid)
{
	int error = 0;

	if (FUNC4(uid))
		error = FUNC3(TOMOYO_TYPE_CHOWN, path,
						FUNC1(&init_user_ns, uid));
	if (!error && FUNC2(gid))
		error = FUNC3(TOMOYO_TYPE_CHGRP, path,
						FUNC0(&init_user_ns, gid));
	return error;
}
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
struct path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dfa; int /*<<< orphan*/ * start; } ;
struct aa_profile {TYPE_1__ policy; int /*<<< orphan*/  disconnected; } ;
struct aa_perms {int allow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AA_CLASS_MOUNT ; 
 int AA_MAY_UMOUNT ; 
 int EACCES ; 
 int /*<<< orphan*/  OP_UMOUNT ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*,size_t) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (struct path*,int /*<<< orphan*/ ,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aa_profile*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct aa_perms*,char const*,int) ; 
 struct aa_perms FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_profile*,struct path*) ; 

__attribute__((used)) static int FUNC7(struct aa_profile *profile, struct path *path,
			  char *buffer)
{
	struct aa_perms perms = { };
	const char *name = NULL, *info = NULL;
	unsigned int state;
	int error;

	FUNC0(!profile);
	FUNC0(!path);

	if (!FUNC1(profile, AA_CLASS_MOUNT))
		return 0;

	error = FUNC3(path, FUNC6(profile, path), buffer, &name,
			     &info, profile->disconnected);
	if (error)
		goto audit;

	state = FUNC2(profile->policy.dfa,
			     profile->policy.start[AA_CLASS_MOUNT],
			     name);
	perms = FUNC5(profile->policy.dfa, state);
	if (AA_MAY_UMOUNT & ~perms.allow)
		error = -EACCES;

audit:
	return FUNC4(profile, OP_UMOUNT, name, NULL, NULL, NULL, 0, NULL,
			   AA_MAY_UMOUNT, &perms, info, error);
}
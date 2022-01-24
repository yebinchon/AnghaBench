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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct aa_profile {TYPE_1__ file; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int FUNC0 (struct aa_profile*,struct aa_perms*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (struct aa_profile*,struct aa_label*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aa_perms*) ; 

__attribute__((used)) static int FUNC2(const char *op, const char *name,
					struct aa_profile *profile,
					struct aa_label *target, bool stack,
					u32 request, struct aa_perms *perms)
{
	const char *info = NULL;
	int error = 0;

	if (!error)
		error = FUNC1(profile, target, stack, request,
					     profile->file.start, perms);
	if (error)
		error = FUNC0(profile, perms, op, request, name,
				      NULL, target, GLOBAL_ROOT_UID, info,
				      error);

	return error;
}
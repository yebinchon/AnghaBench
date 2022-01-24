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
typedef  int /*<<< orphan*/  u32 ;
struct path_cond {int dummy; } ;
struct path {int dummy; } ;
struct aa_profile {int path_flags; int /*<<< orphan*/  label; } ;
struct aa_perms {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct aa_profile*,char const*,int /*<<< orphan*/ ,struct path_cond*,int,struct aa_perms*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,struct path const*,int,char*,char const**,struct path_cond*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct aa_profile*) ; 

__attribute__((used)) static int FUNC3(const char *op, struct aa_profile *profile,
			     const struct path *path, char *buffer, u32 request,
			     struct path_cond *cond, int flags,
			     struct aa_perms *perms)
{
	const char *name;
	int error;

	if (FUNC2(profile))
		return 0;

	error = FUNC1(op, &profile->label, path,
			  flags | profile->path_flags, buffer, &name, cond,
			  request);
	if (error)
		return error;
	return FUNC0(op, profile, name, request, cond, flags,
			      perms);
}
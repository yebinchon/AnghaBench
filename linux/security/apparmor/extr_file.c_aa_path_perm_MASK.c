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
struct path_cond {int /*<<< orphan*/  mode; } ;
struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int PATH_DELEGATE_DELETED ; 
 int PATH_IS_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct aa_profile*,struct path const*,char*,int /*<<< orphan*/ ,struct path_cond*,int,struct aa_perms*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(const char *op, struct aa_label *label,
		 const struct path *path, int flags, u32 request,
		 struct path_cond *cond)
{
	struct aa_perms perms = {};
	struct aa_profile *profile;
	char *buffer = NULL;
	int error;

	flags |= PATH_DELEGATE_DELETED | (FUNC0(cond->mode) ? PATH_IS_DIR :
								0);
	FUNC2(buffer);
	error = FUNC1(label, profile,
			FUNC3(op, profile, path, buffer, request,
					  cond, flags, &perms));

	FUNC4(buffer);

	return error;
}
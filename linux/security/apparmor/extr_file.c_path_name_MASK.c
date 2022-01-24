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
struct path_cond {int /*<<< orphan*/  uid; } ;
struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_profile*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (struct path const*,int,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  nullperms ; 

__attribute__((used)) static int FUNC4(const char *op, struct aa_label *label,
		     const struct path *path, int flags, char *buffer,
		     const char **name, struct path_cond *cond, u32 request)
{
	struct aa_profile *profile;
	const char *info = NULL;
	int error;

	error = FUNC1(path, flags, buffer, name, &info,
			     FUNC3(label)->disconnected);
	if (error) {
		FUNC2(label, profile,
			FUNC0(profile, &nullperms, op, request, *name,
				      NULL, NULL, cond->uid, info, error));
		return error;
	}

	return 0;
}
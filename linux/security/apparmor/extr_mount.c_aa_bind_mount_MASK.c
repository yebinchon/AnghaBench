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
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int LOOKUP_AUTOMOUNT ; 
 int LOOKUP_FOLLOW ; 
 unsigned long MS_BIND ; 
 unsigned long MS_REC ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char const*,int,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_profile*,struct path const*,char*,struct path*,char*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(struct aa_label *label, const struct path *path,
		  const char *dev_name, unsigned long flags)
{
	struct aa_profile *profile;
	char *buffer = NULL, *old_buffer = NULL;
	struct path old_path;
	int error;

	FUNC0(!label);
	FUNC0(!path);

	if (!dev_name || !*dev_name)
		return -EINVAL;

	flags &= MS_REC | MS_BIND;

	error = FUNC3(dev_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
	if (error)
		return error;

	FUNC2(buffer, old_buffer);
	error = FUNC1(label, profile,
			FUNC4(profile, path, buffer, &old_path, old_buffer,
				  NULL, flags, NULL, false));
	FUNC6(buffer, old_buffer);
	FUNC5(&old_path);

	return error;
}
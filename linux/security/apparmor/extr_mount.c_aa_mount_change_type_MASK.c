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
 unsigned long MS_PRIVATE ; 
 unsigned long MS_REC ; 
 unsigned long MS_SHARED ; 
 unsigned long MS_SILENT ; 
 unsigned long MS_SLAVE ; 
 unsigned long MS_UNBINDABLE ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*,struct path const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct aa_label *label, const struct path *path,
			 unsigned long flags)
{
	struct aa_profile *profile;
	char *buffer = NULL;
	int error;

	FUNC0(!label);
	FUNC0(!path);

	/* These are the flags allowed by do_change_type() */
	flags &= (MS_REC | MS_SILENT | MS_SHARED | MS_PRIVATE | MS_SLAVE |
		  MS_UNBINDABLE);

	FUNC2(buffer);
	error = FUNC1(label, profile,
			FUNC3(profile, path, buffer, NULL, NULL, NULL,
				  flags, NULL, false));
	FUNC4(buffer);

	return error;
}
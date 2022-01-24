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
struct aa_label {int dummy; } ;

/* Variables and functions */
 unsigned long AA_MS_IGNORE_MASK ; 
 unsigned long MS_BIND ; 
 unsigned long MS_MGC_MSK ; 
 unsigned long MS_MGC_VAL ; 
 unsigned long MS_MOVE ; 
 unsigned long MS_PRIVATE ; 
 unsigned long MS_REMOUNT ; 
 unsigned long MS_SHARED ; 
 unsigned long MS_SLAVE ; 
 unsigned long MS_UNBINDABLE ; 
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int FUNC2 (struct aa_label*,struct path const*,char const*,unsigned long) ; 
 int FUNC3 (struct aa_label*,struct path const*,unsigned long) ; 
 int FUNC4 (struct aa_label*,struct path const*,char const*) ; 
 int FUNC5 (struct aa_label*,char const*,struct path const*,char const*,unsigned long,void*) ; 
 int FUNC6 (struct aa_label*,struct path const*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_label*) ; 

__attribute__((used)) static int FUNC8(const char *dev_name, const struct path *path,
			     const char *type, unsigned long flags, void *data)
{
	struct aa_label *label;
	int error = 0;

	/* Discard magic */
	if ((flags & MS_MGC_MSK) == MS_MGC_VAL)
		flags &= ~MS_MGC_MSK;

	flags &= ~AA_MS_IGNORE_MASK;

	label = FUNC0();
	if (!FUNC7(label)) {
		if (flags & MS_REMOUNT)
			error = FUNC6(label, path, flags, data);
		else if (flags & MS_BIND)
			error = FUNC2(label, path, dev_name, flags);
		else if (flags & (MS_SHARED | MS_PRIVATE | MS_SLAVE |
				  MS_UNBINDABLE))
			error = FUNC3(label, path, flags);
		else if (flags & MS_MOVE)
			error = FUNC4(label, path, dev_name);
		else
			error = FUNC5(label, dev_name, path, type,
					     flags, data);
	}
	FUNC1(label);

	return error;
}
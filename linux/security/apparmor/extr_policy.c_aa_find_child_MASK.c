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
struct TYPE_2__ {int /*<<< orphan*/  profiles; } ;
struct aa_profile {TYPE_1__ base; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct aa_profile *FUNC4(struct aa_profile *parent, const char *name)
{
	struct aa_profile *profile;

	FUNC2();
	do {
		profile = FUNC0(&parent->base.profiles, name);
	} while (profile && !FUNC1(profile));
	FUNC3();

	/* refcount released by caller */
	return profile;
}
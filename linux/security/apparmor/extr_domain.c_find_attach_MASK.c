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
struct list_head {int dummy; } ;
struct linux_binprm {int dummy; } ;
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct aa_ns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct linux_binprm const*,char const*,struct list_head*,char const**) ; 
 struct aa_profile* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct aa_label *FUNC4(const struct linux_binprm *bprm,
				    struct aa_ns *ns, struct list_head *list,
				    const char *name, const char **info)
{
	struct aa_profile *profile;

	FUNC2();
	profile = FUNC1(FUNC0(bprm, name, list, info));
	FUNC3();

	return profile ? &profile->label : NULL;
}
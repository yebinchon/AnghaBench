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
typedef  int u32 ;
struct path_cond {int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; int /*<<< orphan*/  dfa; } ;
struct aa_profile {TYPE_1__ file; } ;
struct aa_perms {int allow; } ;

/* Variables and functions */
 int EACCES ; 
 int FUNC0 (struct aa_profile*,struct aa_perms*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct path_cond*,struct aa_perms*) ; 
 scalar_t__ FUNC2 (struct aa_profile*) ; 

int FUNC3(const char *op, struct aa_profile *profile, const char *name,
		   u32 request, struct path_cond *cond, int flags,
		   struct aa_perms *perms)
{
	int e = 0;

	if (FUNC2(profile))
		return 0;
	FUNC1(profile->file.dfa, profile->file.start, name, cond, perms);
	if (request & ~perms->allow)
		e = -EACCES;
	return FUNC0(profile, perms, op, request, name, NULL, NULL,
			     cond->uid, NULL, e);
}
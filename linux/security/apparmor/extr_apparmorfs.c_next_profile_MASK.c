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
struct aa_profile {int /*<<< orphan*/  ns; } ;
struct aa_ns {int dummy; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (struct aa_ns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_ns*,int /*<<< orphan*/ ) ; 
 struct aa_profile* FUNC2 (struct aa_profile*) ; 

__attribute__((used)) static struct aa_profile *FUNC3(struct aa_ns *root,
				       struct aa_profile *profile)
{
	struct aa_profile *next = FUNC2(profile);
	if (next)
		return next;

	/* finished all profiles in namespace move to next namespace */
	return FUNC0(root, FUNC1(root, profile->ns));
}
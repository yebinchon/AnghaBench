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
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int unmappedsig; int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_NONE ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  OP_SIGNAL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*,struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa ; 
 int FUNC4 (struct aa_label*,struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct aa_label *sender, struct aa_label *target, int sig)
{
	struct aa_profile *profile;
	FUNC0(sa, LSM_AUDIT_DATA_NONE, OP_SIGNAL);

	FUNC1(&sa)->signal = FUNC2(sig);
	FUNC1(&sa)->unmappedsig = sig;
	return FUNC4(sender, target, profile,
			FUNC3(profile, target, MAY_WRITE, &sa),
			FUNC3(profile, sender, MAY_READ, &sa));
}
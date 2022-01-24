#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_5__ {int cap; } ;
struct TYPE_6__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_CAP ; 
 int /*<<< orphan*/  OP_CAPABLE ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,int,unsigned int,TYPE_2__*) ; 
 TYPE_2__ sa ; 

int FUNC3(struct aa_label *label, int cap, unsigned int opts)
{
	struct aa_profile *profile;
	int error = 0;
	FUNC0(sa, LSM_AUDIT_DATA_CAP, OP_CAPABLE);

	sa.u.cap = cap;
	error = FUNC1(label, profile,
			FUNC2(profile, cap, opts, &sa));

	return error;
}
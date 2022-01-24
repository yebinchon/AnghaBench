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
struct svc_cred {scalar_t__ cr_gss_mech; int /*<<< orphan*/  cr_group_info; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; int /*<<< orphan*/  cr_flavor; void* cr_targ_princ; void* cr_raw_principal; void* cr_principal; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct svc_cred *target, struct svc_cred *source)
{
	target->cr_principal = FUNC2(source->cr_principal, GFP_KERNEL);
	target->cr_raw_principal = FUNC2(source->cr_raw_principal,
								GFP_KERNEL);
	target->cr_targ_princ = FUNC2(source->cr_targ_princ, GFP_KERNEL);
	if ((source->cr_principal && !target->cr_principal) ||
	    (source->cr_raw_principal && !target->cr_raw_principal) ||
	    (source->cr_targ_princ && !target->cr_targ_princ))
		return -ENOMEM;

	target->cr_flavor = source->cr_flavor;
	target->cr_uid = source->cr_uid;
	target->cr_gid = source->cr_gid;
	target->cr_group_info = source->cr_group_info;
	FUNC0(target->cr_group_info);
	target->cr_gss_mech = source->cr_gss_mech;
	if (source->cr_gss_mech)
		FUNC1(source->cr_gss_mech);
	return 0;
}
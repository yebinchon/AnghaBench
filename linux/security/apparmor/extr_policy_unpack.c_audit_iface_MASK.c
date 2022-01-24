#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* hname; } ;
struct aa_profile {TYPE_2__ base; } ;
struct aa_ext {scalar_t__ start; scalar_t__ pos; } ;
struct TYPE_4__ {char const* ns; scalar_t__ pos; } ;
struct TYPE_6__ {char const* name; char const* info; int error; TYPE_1__ iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_APPARMOR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_cb ; 
 struct aa_profile* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa ; 

__attribute__((used)) static int FUNC5(struct aa_profile *new, const char *ns_name,
		       const char *name, const char *info, struct aa_ext *e,
		       int error)
{
	struct aa_profile *profile = FUNC4(FUNC2());
	FUNC0(sa, LSM_AUDIT_DATA_NONE, NULL);
	if (e)
		FUNC3(&sa)->iface.pos = e->pos - e->start;
	FUNC3(&sa)->iface.ns = ns_name;
	if (new)
		FUNC3(&sa)->name = new->base.hname;
	else
		FUNC3(&sa)->name = name;
	FUNC3(&sa)->info = info;
	FUNC3(&sa)->error = error;

	return FUNC1(AUDIT_APPARMOR_STATUS, profile, &sa, audit_cb);
}
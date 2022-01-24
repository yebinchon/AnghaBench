#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct aa_label {int dummy; } ;
struct TYPE_3__ {char const* ns; } ;
struct TYPE_4__ {char const* name; char const* info; int error; struct aa_label* label; TYPE_1__ iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_APPARMOR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_cb ; 
 int /*<<< orphan*/  sa ; 

__attribute__((used)) static int FUNC3(struct aa_label *label, const char *op,
			const char *ns_name, const char *name,
			const char *info, int error)
{
	FUNC0(sa, LSM_AUDIT_DATA_NONE, op);

	FUNC2(&sa)->iface.ns = ns_name;
	FUNC2(&sa)->name = name;
	FUNC2(&sa)->info = info;
	FUNC2(&sa)->error = error;
	FUNC2(&sa)->label = label;

	FUNC1(AUDIT_APPARMOR_STATUS, &sa, audit_cb);

	return error;
}
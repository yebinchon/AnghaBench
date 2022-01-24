#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_7__ {scalar_t__ hname; } ;
struct aa_profile {TYPE_2__ base; TYPE_3__* ns; } ;
struct aa_label {int dummy; } ;
struct TYPE_9__ {size_t type; scalar_t__ name; struct aa_label* label; scalar_t__ error; scalar_t__ info; scalar_t__ op; } ;
struct TYPE_6__ {scalar_t__ hname; } ;
struct TYPE_8__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_VIEW_SUBNS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__* aa_audit_type ; 
 scalar_t__ aa_g_audit_header ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,TYPE_3__*,struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct aa_label*) ; 
 struct aa_profile* FUNC6 (struct aa_label*) ; 
 TYPE_3__* root_ns ; 

__attribute__((used)) static void FUNC7(struct audit_buffer *ab, void *ca)
{
	struct common_audit_data *sa = ca;

	if (aa_g_audit_header) {
		FUNC2(ab, "apparmor=");
		FUNC3(ab, aa_audit_type[FUNC1(sa)->type]);
	}

	if (FUNC1(sa)->op) {
		FUNC2(ab, " operation=");
		FUNC3(ab, FUNC1(sa)->op);
	}

	if (FUNC1(sa)->info) {
		FUNC2(ab, " info=");
		FUNC3(ab, FUNC1(sa)->info);
		if (FUNC1(sa)->error)
			FUNC2(ab, " error=%d", FUNC1(sa)->error);
	}

	if (FUNC1(sa)->label) {
		struct aa_label *label = FUNC1(sa)->label;

		if (FUNC5(label)) {
			struct aa_profile *profile = FUNC6(label);

			if (profile->ns != root_ns) {
				FUNC2(ab, " namespace=");
				FUNC4(ab,
						       profile->ns->base.hname);
			}
			FUNC2(ab, " profile=");
			FUNC4(ab, profile->base.hname);
		} else {
			FUNC2(ab, " label=");
			FUNC0(ab, root_ns, label, FLAG_VIEW_SUBNS,
					GFP_ATOMIC);
		}
	}

	if (FUNC1(sa)->name) {
		FUNC2(ab, " name=");
		FUNC4(ab, FUNC1(sa)->name);
	}
}
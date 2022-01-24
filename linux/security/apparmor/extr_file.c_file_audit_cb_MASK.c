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
struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_3__ {scalar_t__ target; int /*<<< orphan*/  ouid; } ;
struct TYPE_4__ {int request; int denied; TYPE_1__ fs; scalar_t__ peer; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int AA_AUDIT_FILE_MASK ; 
 int /*<<< orphan*/  FLAG_VIEW_SUBNS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;
	kuid_t fsuid = FUNC5();

	if (FUNC1(sa)->request & AA_AUDIT_FILE_MASK) {
		FUNC3(ab, " requested_mask=");
		FUNC2(ab, FUNC1(sa)->request);
	}
	if (FUNC1(sa)->denied & AA_AUDIT_FILE_MASK) {
		FUNC3(ab, " denied_mask=");
		FUNC2(ab, FUNC1(sa)->denied);
	}
	if (FUNC1(sa)->request & AA_AUDIT_FILE_MASK) {
		FUNC3(ab, " fsuid=%d",
				 FUNC6(&init_user_ns, fsuid));
		FUNC3(ab, " ouid=%d",
				 FUNC6(&init_user_ns, FUNC1(sa)->fs.ouid));
	}

	if (FUNC1(sa)->peer) {
		FUNC3(ab, " target=");
		FUNC0(ab, FUNC7(FUNC1(sa)->label), FUNC1(sa)->peer,
				FLAG_VIEW_SUBNS, GFP_ATOMIC);
	} else if (FUNC1(sa)->fs.target) {
		FUNC3(ab, " target=");
		FUNC4(ab, FUNC1(sa)->fs.target);
	}
}
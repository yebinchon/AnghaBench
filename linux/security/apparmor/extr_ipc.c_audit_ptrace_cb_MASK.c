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
struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int request; int denied; int /*<<< orphan*/  peer; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int AA_PTRACE_PERM_MASK ; 
 int /*<<< orphan*/  FLAGS_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;

	if (FUNC1(sa)->request & AA_PTRACE_PERM_MASK) {
		FUNC2(ab, " requested_mask=");
		FUNC3(ab, FUNC1(sa)->request);

		if (FUNC1(sa)->denied & AA_PTRACE_PERM_MASK) {
			FUNC2(ab, " denied_mask=");
			FUNC3(ab, FUNC1(sa)->denied);
		}
	}
	FUNC2(ab, " peer=");
	FUNC0(ab, FUNC4(FUNC1(sa)->label), FUNC1(sa)->peer,
			FLAGS_NONE, GFP_ATOMIC);
}
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
struct TYPE_2__ {int request; int denied; size_t signal; int /*<<< orphan*/  peer; int /*<<< orphan*/  label; int /*<<< orphan*/  unmappedsig; } ;

/* Variables and functions */
 int AA_SIGNAL_PERM_MASK ; 
 int /*<<< orphan*/  FLAGS_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t MAXMAPPED_SIGNAME ; 
 scalar_t__ SIGRT_BASE ; 
 size_t SIGUNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sig_names ; 

__attribute__((used)) static void FUNC5(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;

	if (FUNC1(sa)->request & AA_SIGNAL_PERM_MASK) {
		FUNC2(ab, " requested_mask=");
		FUNC3(ab, FUNC1(sa)->request);
		if (FUNC1(sa)->denied & AA_SIGNAL_PERM_MASK) {
			FUNC2(ab, " denied_mask=");
			FUNC3(ab, FUNC1(sa)->denied);
		}
	}
	if (FUNC1(sa)->signal == SIGUNKNOWN)
		FUNC2(ab, "signal=unknown(%d)",
				 FUNC1(sa)->unmappedsig);
	else if (FUNC1(sa)->signal < MAXMAPPED_SIGNAME)
		FUNC2(ab, " signal=%s", sig_names[FUNC1(sa)->signal]);
	else
		FUNC2(ab, " signal=rtmin+%d",
				 FUNC1(sa)->signal - SIGRT_BASE);
	FUNC2(ab, " peer=");
	FUNC0(ab, FUNC4(FUNC1(sa)->label), FUNC1(sa)->peer,
			FLAGS_NONE, GFP_ATOMIC);
}
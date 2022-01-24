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
struct linux_binprm {int /*<<< orphan*/  cred; } ;
struct aa_label {scalar_t__ proxy; } ;
struct TYPE_2__ {scalar_t__ pdeath_signal; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*,struct aa_label*) ; 
 struct aa_label* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC4 (struct aa_label*) ; 

__attribute__((used)) static void FUNC5(struct linux_binprm *bprm)
{
	struct aa_label *label = FUNC1();
	struct aa_label *new_label = FUNC3(bprm->cred);

	/* bail out if unconfined or not changing profile */
	if ((new_label->proxy == label->proxy) ||
	    (FUNC4(new_label)))
		return;

	FUNC2(bprm->cred, current->files);

	current->pdeath_signal = 0;

	/* reset soft limits and set hard limits for the new label */
	FUNC0(label, new_label);
}
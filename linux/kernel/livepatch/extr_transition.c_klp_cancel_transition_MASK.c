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
struct TYPE_4__ {TYPE_1__* mod; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ KLP_PATCHED ; 
 scalar_t__ KLP_UNPATCHED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ klp_target_state ; 
 TYPE_2__* klp_transition_patch ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	if (FUNC0(klp_target_state != KLP_PATCHED))
		return;

	FUNC2("'%s': canceling patching transition, going to unpatch\n",
		 klp_transition_patch->mod->name);

	klp_target_state = KLP_UNPATCHED;
	FUNC1();
}
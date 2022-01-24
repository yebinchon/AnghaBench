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
typedef  int uint32_t ;
struct vmx_pages {int /*<<< orphan*/  enlightened_vmcs; int /*<<< orphan*/  enlightened_vmcs_gpa; int /*<<< orphan*/  shadow_vmcs_gpa; scalar_t__ shadow_vmcs; int /*<<< orphan*/  vmcs_gpa; scalar_t__ vmcs; } ;
struct TYPE_2__ {int revision_id; } ;

/* Variables and functions */
 TYPE_1__* current_evmcs ; 
 int /*<<< orphan*/  enable_evmcs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct vmx_pages *vmx)
{
	if (!enable_evmcs) {
		/* Load a VMCS. */
		*(uint32_t *)(vmx->vmcs) = FUNC2();
		if (FUNC1(vmx->vmcs_gpa))
			return false;

		if (FUNC3(vmx->vmcs_gpa))
			return false;

		/* Setup shadow VMCS, do not load it yet. */
		*(uint32_t *)(vmx->shadow_vmcs) =
			FUNC2() | 0x80000000ul;
		if (FUNC1(vmx->shadow_vmcs_gpa))
			return false;
	} else {
		if (FUNC0(vmx->enlightened_vmcs_gpa,
				  vmx->enlightened_vmcs))
			return false;
		current_evmcs->revision_id = FUNC2();
	}

	return true;
}
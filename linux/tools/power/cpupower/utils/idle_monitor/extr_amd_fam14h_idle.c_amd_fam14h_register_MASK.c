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
struct cpuidle_monitor {int hw_states_num; int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; } ;
struct TYPE_2__ {scalar_t__ vendor; int family; } ;

/* Variables and functions */
 int AMD_FAM14H_STATE_NUM ; 
 scalar_t__ MONITOR_NAME_LEN ; 
 scalar_t__ X86_VENDOR_AMD ; 
 struct cpuidle_monitor amd_fam14h_monitor ; 
 int /*<<< orphan*/ * amd_fam14h_pci_dev ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu_count ; 
 TYPE_1__ cpupower_cpu_info ; 
 void** current_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * pci_acc ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int,int) ; 
 void** previous_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

struct cpuidle_monitor *FUNC5(void)
{
	int num;

	if (cpupower_cpu_info.vendor != X86_VENDOR_AMD)
		return NULL;

	if (cpupower_cpu_info.family == 0x14)
		FUNC4(amd_fam14h_monitor.name, "Fam_14h",
			MONITOR_NAME_LEN - 1);
	else if (cpupower_cpu_info.family == 0x12)
		FUNC4(amd_fam14h_monitor.name, "Fam_12h",
			MONITOR_NAME_LEN - 1);
	else
		return NULL;

	/* We do not alloc for nbp1 machine wide counter */
	for (num = 0; num < AMD_FAM14H_STATE_NUM - 1; num++) {
		previous_count[num] = FUNC0(cpu_count,
					      sizeof(unsigned long long));
		current_count[num]  = FUNC0(cpu_count,
					      sizeof(unsigned long long));
	}

	/* We need PCI device: Slot 18, Func 6, compare with BKDG
	   for fam 12h/14h */
	amd_fam14h_pci_dev = FUNC2(&pci_acc, 0x18, 6);
	if (amd_fam14h_pci_dev == NULL || pci_acc == NULL)
		return NULL;

	if (!FUNC1())
		amd_fam14h_monitor.hw_states_num = AMD_FAM14H_STATE_NUM - 1;

	amd_fam14h_monitor.name_len = FUNC3(amd_fam14h_monitor.name);
	return &amd_fam14h_monitor;
}
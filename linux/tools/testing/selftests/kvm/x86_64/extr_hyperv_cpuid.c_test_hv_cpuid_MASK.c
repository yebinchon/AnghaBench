#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_cpuid_entry2 {int function; scalar_t__ index; scalar_t__ flags; unsigned long eax; int /*<<< orphan*/ * padding; } ;
struct kvm_cpuid2 {int nent; struct kvm_cpuid_entry2* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct kvm_cpuid2 *hv_cpuid_entries,
			  int evmcs_enabled)
{
	int i;

	if (!evmcs_enabled)
		FUNC0(hv_cpuid_entries->nent == 6,
			    "KVM_GET_SUPPORTED_HV_CPUID should return 6 entries"
			    " when Enlightened VMCS is disabled (returned %d)",
			    hv_cpuid_entries->nent);
	else
		FUNC0(hv_cpuid_entries->nent == 7,
			    "KVM_GET_SUPPORTED_HV_CPUID should return 7 entries"
			    " when Enlightened VMCS is enabled (returned %d)",
			    hv_cpuid_entries->nent);

	for (i = 0; i < hv_cpuid_entries->nent; i++) {
		struct kvm_cpuid_entry2 *entry = &hv_cpuid_entries->entries[i];

		FUNC0((entry->function >= 0x40000000) &&
			    (entry->function <= 0x4000000A),
			    "function %lx is our of supported range",
			    entry->function);

		FUNC0(entry->index == 0,
			    ".index field should be zero");

		FUNC0(entry->flags == 0,
			    ".flags field should be zero");

		FUNC0(!entry->padding[0] && !entry->padding[1] &&
			    !entry->padding[2], "padding should be zero");

		if (entry->function == 0x40000004) {
			int nononarchcs = !!(entry->eax & (1UL << 18));

			FUNC0(nononarchcs == !FUNC1(),
				    "NoNonArchitecturalCoreSharing bit"
				    " doesn't reflect SMT setting");
		}

		/*
		 * If needed for debug:
		 * fprintf(stdout,
		 *	"CPUID%lx EAX=0x%lx EBX=0x%lx ECX=0x%lx EDX=0x%lx\n",
		 *	entry->function, entry->eax, entry->ebx, entry->ecx,
		 *	entry->edx);
		 */
	}

}
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
struct kvm_vm {int dummy; } ;
struct kvm_cpuid_entry2 {int dummy; } ;
struct kvm_cpuid2 {int nent; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GET_SUPPORTED_HV_CPUID ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct kvm_cpuid2* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_cpuid2*) ; 

struct kvm_cpuid2 *FUNC4(struct kvm_vm *vm)
{
	int nent = 20; /* should be enough */
	static struct kvm_cpuid2 *cpuid;

	cpuid = FUNC1(sizeof(*cpuid) + nent * sizeof(struct kvm_cpuid_entry2));

	if (!cpuid) {
		FUNC2("malloc");
		FUNC0();
	}

	cpuid->nent = nent;

	FUNC3(vm, VCPU_ID, KVM_GET_SUPPORTED_HV_CPUID, cpuid);

	return cpuid;
}
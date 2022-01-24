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
struct kvm_cpuid2 {int /*<<< orphan*/  nent; } ;

/* Variables and functions */
 scalar_t__ E2BIG ; 
 int /*<<< orphan*/  KVM_GET_SUPPORTED_HV_CPUID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_cpuid2*) ; 
 scalar_t__ errno ; 

void FUNC2(struct kvm_vm *vm)
{
	static struct kvm_cpuid2 cpuid = {.nent = 0};
	int ret;

	ret = FUNC1(vm, VCPU_ID, KVM_GET_SUPPORTED_HV_CPUID, &cpuid);

	FUNC0(ret == -1 && errno == E2BIG,
		    "KVM_GET_SUPPORTED_HV_CPUID didn't fail with -E2BIG when"
		    " it should have: %d %d", ret, errno);
}
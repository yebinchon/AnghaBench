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

/* Variables and functions */
 int /*<<< orphan*/  KVM_CAP_MAX_VCPUS ; 
 int /*<<< orphan*/  KVM_CAP_MAX_VCPU_ID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(int argc, char *argv[])
{
	int kvm_max_vcpu_id = FUNC1(KVM_CAP_MAX_VCPU_ID);
	int kvm_max_vcpus = FUNC1(KVM_CAP_MAX_VCPUS);

	FUNC2("KVM_CAP_MAX_VCPU_ID: %d\n", kvm_max_vcpu_id);
	FUNC2("KVM_CAP_MAX_VCPUS: %d\n", kvm_max_vcpus);

	/*
	 * Upstream KVM prior to 4.8 does not support KVM_CAP_MAX_VCPU_ID.
	 * Userspace is supposed to use KVM_CAP_MAX_VCPUS as the maximum ID
	 * in this case.
	 */
	if (!kvm_max_vcpu_id)
		kvm_max_vcpu_id = kvm_max_vcpus;

	FUNC0(kvm_max_vcpu_id >= kvm_max_vcpus,
		    "KVM_MAX_VCPU_ID (%d) must be at least as large as KVM_MAX_VCPUS (%d).",
		    kvm_max_vcpu_id, kvm_max_vcpus);

	FUNC3(0, kvm_max_vcpus);

	if (kvm_max_vcpu_id > kvm_max_vcpus)
		FUNC3(
			kvm_max_vcpu_id - kvm_max_vcpus, kvm_max_vcpus);

	return 0;
}
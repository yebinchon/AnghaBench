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
typedef  int /*<<< orphan*/  uint32_t ;
struct vcpu {int /*<<< orphan*/  fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_sregs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GET_SREGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 struct vcpu* FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_sregs *sregs)
{
	struct vcpu *vcpu = FUNC2(vm, vcpuid);
	int ret;

	FUNC0(vcpu != NULL, "vcpu not found, vcpuid: %u", vcpuid);

	ret = FUNC1(vcpu->fd, KVM_GET_SREGS, sregs);
	FUNC0(ret == 0, "KVM_GET_SREGS failed, rc: %i errno: %i",
		ret, errno);
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct vcpu {TYPE_1__* state; int /*<<< orphan*/  fd; } ;
struct kvm_vm {int dummy; } ;
struct TYPE_2__ {int immediate_exit; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  KVM_RUN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vcpu* FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vm *vm, uint32_t vcpuid)
{
	struct vcpu *vcpu = FUNC2(vm, vcpuid);
	int ret;

	FUNC0(vcpu != NULL, "vcpu not found, vcpuid: %u", vcpuid);

	vcpu->state->immediate_exit = 1;
	ret = FUNC1(vcpu->fd, KVM_RUN, NULL);
	vcpu->state->immediate_exit = 0;

	FUNC0(ret == -1 && errno == EINTR,
		    "KVM_RUN IOCTL didn't exit immediately, rc: %i, errno: %i",
		    ret, errno);
}
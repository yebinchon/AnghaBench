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
typedef  int /*<<< orphan*/  uint32_t ;
struct vcpu {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {int nmsrs; scalar_t__ size; TYPE_1__* entries; } ;
struct kvm_x86_state {TYPE_2__ nested; TYPE_2__ regs; TYPE_2__ debugregs; TYPE_2__ mp_state; TYPE_2__ events; TYPE_2__ msrs; TYPE_2__ sregs; TYPE_2__ xcrs; TYPE_2__ xsave; } ;
struct kvm_vm {int dummy; } ;
struct TYPE_3__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_CAP_XCRS ; 
 int /*<<< orphan*/  KVM_SET_DEBUGREGS ; 
 int /*<<< orphan*/  KVM_SET_MP_STATE ; 
 int /*<<< orphan*/  KVM_SET_MSRS ; 
 int /*<<< orphan*/  KVM_SET_NESTED_STATE ; 
 int /*<<< orphan*/  KVM_SET_REGS ; 
 int /*<<< orphan*/  KVM_SET_SREGS ; 
 int /*<<< orphan*/  KVM_SET_VCPU_EVENTS ; 
 int /*<<< orphan*/  KVM_SET_XCRS ; 
 int /*<<< orphan*/  KVM_SET_XSAVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct vcpu* FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

void FUNC4(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_x86_state *state)
{
	struct vcpu *vcpu = FUNC3(vm, vcpuid);
	int r;

	r = FUNC1(vcpu->fd, KVM_SET_XSAVE, &state->xsave);
        FUNC0(r == 0, "Unexpected result from KVM_SET_XSAVE, r: %i",
                r);

	if (FUNC2(KVM_CAP_XCRS)) {
		r = FUNC1(vcpu->fd, KVM_SET_XCRS, &state->xcrs);
		FUNC0(r == 0, "Unexpected result from KVM_SET_XCRS, r: %i",
			    r);
	}

	r = FUNC1(vcpu->fd, KVM_SET_SREGS, &state->sregs);
        FUNC0(r == 0, "Unexpected result from KVM_SET_SREGS, r: %i",
                r);

	r = FUNC1(vcpu->fd, KVM_SET_MSRS, &state->msrs);
        FUNC0(r == state->msrs.nmsrs, "Unexpected result from KVM_SET_MSRS, r: %i (failed at %x)",
                r, r == state->msrs.nmsrs ? -1 : state->msrs.entries[r].index);

	r = FUNC1(vcpu->fd, KVM_SET_VCPU_EVENTS, &state->events);
        FUNC0(r == 0, "Unexpected result from KVM_SET_VCPU_EVENTS, r: %i",
                r);

	r = FUNC1(vcpu->fd, KVM_SET_MP_STATE, &state->mp_state);
        FUNC0(r == 0, "Unexpected result from KVM_SET_MP_STATE, r: %i",
                r);

	r = FUNC1(vcpu->fd, KVM_SET_DEBUGREGS, &state->debugregs);
        FUNC0(r == 0, "Unexpected result from KVM_SET_DEBUGREGS, r: %i",
                r);

	r = FUNC1(vcpu->fd, KVM_SET_REGS, &state->regs);
        FUNC0(r == 0, "Unexpected result from KVM_SET_REGS, r: %i",
                r);

	if (state->nested.size) {
		r = FUNC1(vcpu->fd, KVM_SET_NESTED_STATE, &state->nested);
		FUNC0(r == 0, "Unexpected result from KVM_SET_NESTED_STATE, r: %i",
			r);
	}
}
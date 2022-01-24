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
struct ucall {scalar_t__ cmd; } ;
typedef  struct ucall vm_vaddr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ucall ;
struct kvm_vm {int dummy; } ;
struct TYPE_2__ {scalar_t__ phys_addr; int len; struct ucall* data; scalar_t__ is_write; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_1__ mmio; } ;
typedef  int /*<<< orphan*/  gva ;

/* Variables and functions */
 scalar_t__ KVM_EXIT_MMIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ucall* FUNC1 (struct kvm_vm*,struct ucall) ; 
 int /*<<< orphan*/  FUNC2 (struct ucall*,struct ucall*,int) ; 
 scalar_t__ ucall_exit_mmio_addr ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 struct kvm_run* FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

uint64_t FUNC5(struct kvm_vm *vm, uint32_t vcpu_id, struct ucall *uc)
{
	struct kvm_run *run = FUNC4(vm, vcpu_id);
	struct ucall ucall = {};

	if (run->exit_reason == KVM_EXIT_MMIO &&
	    run->mmio.phys_addr == (uint64_t)ucall_exit_mmio_addr) {
		vm_vaddr_t gva;

		FUNC0(run->mmio.is_write && run->mmio.len == 8,
			    "Unexpected ucall exit mmio address access");
		FUNC2(&gva, run->mmio.data, sizeof(gva));
		FUNC2(&ucall, FUNC1(vm, gva), sizeof(ucall));

		FUNC3(vm, vcpu_id);
		if (uc)
			FUNC2(uc, &ucall, sizeof(ucall));
	}

	return ucall.cmd;
}
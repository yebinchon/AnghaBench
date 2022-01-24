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
struct kvm_run {scalar_t__ exit_reason; } ;

/* Variables and functions */
 scalar_t__ KVM_EXIT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 struct kvm_run* FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvm_vm *vm)
{
	struct kvm_run *run = FUNC4(vm, VCPU_ID);

	FUNC2(vm, false);
	FUNC3(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_SHUTDOWN,
			"Exit_reason other than KVM_EXIT_SHUTDOWN: %u (%s)\n",
			run->exit_reason,
			FUNC1(run->exit_reason));
}
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
struct kvm_vm {scalar_t__ kvm_fd; scalar_t__ fd; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CAP_IMMEDIATE_EXIT ; 
 int /*<<< orphan*/  KVM_CREATE_VM ; 
 int /*<<< orphan*/  KVM_DEV_PATH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(struct kvm_vm *vm, int perm)
{
	vm->kvm_fd = FUNC5(KVM_DEV_PATH, perm);
	if (vm->kvm_fd < 0)
		FUNC1(KSFT_SKIP);

	if (!FUNC4(KVM_CAP_IMMEDIATE_EXIT)) {
		FUNC2(stderr, "immediate_exit not available, skipping test\n");
		FUNC1(KSFT_SKIP);
	}

	vm->fd = FUNC3(vm->kvm_fd, KVM_CREATE_VM, vm->type);
	FUNC0(vm->fd >= 0, "KVM_CREATE_VM ioctl failed, "
		"rc: %i errno: %i", vm->fd, errno);
}
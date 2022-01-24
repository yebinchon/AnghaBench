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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long,void*) ; 
 struct vcpu* FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

int FUNC3(struct kvm_vm *vm, uint32_t vcpuid,
		unsigned long cmd, void *arg)
{
	struct vcpu *vcpu = FUNC2(vm, vcpuid);
	int ret;

	FUNC0(vcpu != NULL, "vcpu not found, vcpuid: %u", vcpuid);

	ret = FUNC1(vcpu->fd, cmd, arg);

	return ret;
}